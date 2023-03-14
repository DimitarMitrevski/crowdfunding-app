import { useParams } from "react-router-dom";
import { useEffect, useState } from "react";
import "../../assets/css/Campaign.css";
const URL = "http://localhost:4000/v1/json/campaign/";

function Campaign() {
  const { id } = useParams();
  const [campaign, setCampaing] = useState({});
  const [amount, setAmount] = useState(1);
  const [nickname, setNickname] = useState("");
  const [amountInvalid, setAmountInvalid] = useState(false);
  const [nicknameInvalid, setNicknameInvalid] = useState(false);

  useEffect(() => {
    fetch(`${URL + id}`)
      .then((res) => res.json())
      .then((data) => {
        setCampaing(data[0]);
      })
      .catch((err) => console.log(err));
  }, []);

  const donation = () => {
    fetch("http://localhost:4000/new/donation", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        campaign_id: id,
        amount,
        nickname,
      }),
    })
      .then((res) => res.json())
      .then((data) => {
        if (data == "Success") document.location.reload();
      })
      .catch((err) => {
        console.log(err);
      });
  };

  const validation = () => {
    if (parseInt(amount) < 1) {
      setAmountInvalid(true);
    } else {
      setAmountInvalid(false);
    }
    if (nickname.length < 2) setNicknameInvalid(true);
    else setNicknameInvalid(false);
  };

  return (
    <div className="campaign">
      <h1 className="text-center">
        {campaign.name}{" "}
        <span className="raised">
          ${campaign.collected}/${campaign.goal}
        </span>
      </h1>
      <p>{campaign.description}</p>
      <p>
        Status:{" "}
        <span className={`status ${campaign.status}`}> {campaign.status}</span>
      </p>
      <hr />
      <h2>Donate now!</h2>
      <form
        onSubmit={(e) => {
          e.preventDefault();
          if (nickname.length < 2 || parseInt(amount) < 1)
            alert("Invalid input");
          else donation();
        }}
      >
        <label htmlFor="nickname">Nickname:</label>
        <input
          name="nickname"
          type="text"
          onChange={(e) => {
            setNickname(e.target.value);
          }}
          onKeyUp={() => {
            validation();
          }}
          placeholder="Your Nickname..."
        />
        {nicknameInvalid && (
          <span className="text-error">
            Your nickname must be at least 2 characters.
          </span>
        )}
        <label htmlFor="amount">Amount:</label>

        <input
          name="amount"
          type="number"
          placeholder="1"
          value={amount}
          onChange={(e) => {
            setAmount(e.target.value);
            validation();
          }}
        />
        {amountInvalid && (
          <span className="text-error">Enter value above 0</span>
        )}
        <button type="submit" className="btn">
          Donate
        </button>
      </form>
    </div>
  );
}
export default Campaign;

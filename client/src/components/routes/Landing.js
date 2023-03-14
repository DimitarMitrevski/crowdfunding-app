import { useState, useEffect } from "react";
import "../../assets/css/Landing.css";
import Card from "../Card/index.js";

const MYAPI = "http://localhost:4000/v1/json/campaigns";

function Landing() {
  const [campaigns, setCampaigns] = useState([]);
  useEffect(() => {
    // async function fetchData() {
    //   // You can await here
    //   const res = await window.fetch(MYAPI);
    //   let data = await res.json();
    //   setCampaigns(data);
    //   // ...
    // }
    // fetchData();
    fetch(MYAPI)
      .then((res) => res.json())
      .then((data) => {
        setCampaigns(data);
      })
      .catch((err) => {
        console.log(err.message);
      });
  }, []);

  return (
    <div className="landing">
      <h1 className="text-center">All campaigns</h1>
      {campaigns.map((campaign) => {
        return <Card key={campaign.id} campaign={campaign} />;
      })}
    </div>
  );
}

export default Landing;

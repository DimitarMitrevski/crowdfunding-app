import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import "../../assets/css/Card.css";
function Card({ campaign }) {
  return (
    <div className="card" data-aos="fade-up">
      <h2>
        {campaign.name}{" "}
        <span className="raised">
          ${campaign.collected}/${campaign.goal}
        </span>
      </h2>
      <p>{campaign.description}</p>
      <p>
        Status:{" "}
        <span className={`status ${campaign.status}`}> {campaign.status}</span>
      </p>
      {campaign.status != "fraud" && (
        <Link className="btn donate" to={`campaign/${campaign.id}`}>
          Donate
        </Link>
      )}
    </div>
  );
}

export default Card;

import logo from "./logo.svg";
import "./assets/css/App.css";
import Landing from "./components/routes/Landing";
import Campaign from "./components/routes/Campaign";
import {
  BrowserRouter as Router,
  Route,
  Routes,
  useParams,
} from "react-router-dom";
import AOS from "aos";
import "aos/dist/aos.css";
AOS.init();

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" exact element={<Landing />} />
        <Route path="/campaign/:id" exact element={<Campaign />} />
      </Routes>
    </Router>
  );
}

export default App;

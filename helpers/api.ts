import axios from "axios";

const api = axios.create({
    baseURL: "https://cinetec.vercel.app/api"
})

export default api
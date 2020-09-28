import React, {useState} from "react";
import axios from "axios";

export const AuthContext = React.createContext();

export const AuthConsumer = AuthContext.Consumer

const AuthProvider = (props) => {
    const [user, setUser] = useState(null);

    const handleRegister = async (user, history) => {
        try {
            let res=await axios.post("/api/auth", user);

            // Remember Devise data will result in "<status> and data..."" in res.data, so we have to do res.data.data
            setUser(res.data.data)
            history.push("/");
        } catch (err) {
            const errs = err.response.data.errors.full_messages.reduce(
            (acc, val) => acc + val
            )
            alert (errs)
        }
    }

    const handleLogin = async (user, history) => {
        try {
            let res = await axios.post("api/auth/sign_in", user)

            setUser(res.data.data);
            history.push("/");
        } catch (err) {
            alert("error in logging in, please enable inspect and see console");
            debugger;
        }
    }
    
    const handleLogout = async (history) => {
        try {
            let res = await axios.delete("/api/auth/sign_out")
            // See Rails Route info on how to "destroy" the session info

            setUser(null);
            history.push("/login");
        } catch (err) {
            alert("error logging out/clear session. please enable inspect and see console")
            debugger
        }
    }

    //user -  if a user is logged in we will want their data so we will pass in the user object as ...state 
    // authenticated  -  a helper boolean to quickly tell us if the user is logged in our not. 
    // handleRegister  -  function that handles the registration of a user. Makes a post request to "/api/auth" to create a user. 
    // handleLogin  -  function that handles the login of a user. Makes a post request to "/api/auth/sign_in" to authenticate a user. 
    // handleLogout  -  function handles the logout of a user. Makes a delete request to "/api/auth/sign_out" to logout a user. 
    // setUser  -  function that gets the user from our database and sets it to our user state.

    return (
        <AuthContext.Provider
        value={{
            user,
            authenticated: user !== null,
            setUser,
            handleRegister, //Go to Line 11
            handleLogin, //Go to Line 26
            handleLogout, //Go to Line 38

          }}
          >
              {props.children}
          </AuthContext.Provider>   
    )
}

export default AuthProvider;
import React from "react";
import Navigation from  "./components/Navigation";
import LoginForm from "./modules/core/Forms/Login";
import CssBaseline from '@material-ui/core/CssBaseline';
import { withStyles } from '@material-ui/core/styles';
import { ApolloProvider } from "react-apollo";
import rootStyle from "./modules/styles/rootStyle";
import ApolloClient from "apollo-boost";
import withRoot from './withRoot';



const client = new ApolloClient({
  uri: "/graphql"
});

function App() {
  return (
    <ApolloProvider client={client}>
      <CssBaseline />
      <Navigation />
      <LoginForm />
    </ApolloProvider>
  )
}

export default withRoot(withStyles(rootStyle)(App));

import React from "react";
import Navigation from  "./Navigation";
import { withStyles } from '@material-ui/core/styles';
import { ApolloProvider } from "react-apollo";
import ApolloClient from "apollo-boost";
import withRoot from '../withRoot';

const styles = theme => ({
  root: {
    paddingTop: theme.spacing.unit * 20,
  },
});

const client = new ApolloClient({
  uri: "/graphql"
});

function App() {
  return (
    <ApolloProvider client={client}>
      <Navigation>
        
      </Navigation>
    </ApolloProvider>
  )
}

export default withRoot(withStyles(styles)(App));

import React from 'react';
import { ApolloProvider } from "react-apollo";
import ApolloClient from "apollo-boost";

const client = new ApolloClient({
  uri: "/graphql"
});

const App = () => (
  <ApolloProvider client={client}>
    <div>
      <h2>Welcome to the Jungle</h2>
    </div>
  </ApolloProvider>
);

export default App;

import React, { useState } from 'react';
import PropTypes from 'prop-types';
import Paper from '@material-ui/core/Paper';
import Typography from "@material-ui/core/Typography";
import { withStyles } from "@material-ui/core/styles";
import loginStyles from "../../styles/loginStyle";
import Card from "../Cards/Card";
import FormControlLabel from '@material-ui/core/FormControlLabel';
import FormControl from '@material-ui/core/FormControl';


function LoginForm(props) {
  const { classes } = props;
  const [cardAnimaton, setCardAnimation] = useState("");


  const getCountTimeout = () => {
    setTimeout(() => {
      setCardAnimation("");
    }, 700);
  };

  return (
    <div className={classes.main}>
      <Paper className={classes.paper}>
        <Card className={classes[{cardAnimaton}]}>
          <Typography align="center" variant="h5" color="primary">
            Login
          </Typography>
        </Card>
      </Paper>
    </div>
  )
}


LoginForm.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(loginStyles)(LoginForm);
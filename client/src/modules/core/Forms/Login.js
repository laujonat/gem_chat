import React, { useState } from "react";
import PropTypes from "prop-types";
import { borderRadius } from "@material-ui/system";
import Checkbox from "@material-ui/core/Checkbox";
import Fingerprint from "@material-ui/icons/Fingerprint";
import Paper from "@material-ui/core/Paper";
import Typography from "@material-ui/core/Typography";
import { withStyles } from "@material-ui/core/styles";
import loginStyles from "../../styles/loginStyle";
import Button from "@material-ui/core/Button";
import Card from "../Cards/Card";
import Grid from "@material-ui/core/Grid";
import FormControlLabel from "@material-ui/core/FormControlLabel";
import FormControl from "@material-ui/core/FormControl";
import TextField from "@material-ui/core/TextField";
import Lock from "@material-ui/icons/Lock";

function LoginForm(props) {
  const { classes } = props;
  const [cardAnimaton, setCardAnimation] = useState("");

  const getCountTimeout = () => {
    setTimeout(() => {
      setCardAnimation("");
    }, 700);
  };
  console.log(classes);
  return (
    <div className={classes.main}>
      <Paper
        style={{
          padding: `2em`,
          margin: `auto`,
          position: `relative`
        }}
        className={classes.paper}
      >
        <Grid container spacing={8} alignItems="flex-end">
          <Grid item md={true} sm={true} xs={true}>
            <TextField id="username" label="Username" fullWidth required />
          </Grid>
        </Grid>
        <Card elevation0="true">
          <Typography align="center" variant="subtitle1" color="primary">
            <Lock />
          </Typography>
        </Card>
        <Grid container spacing={8} alignItems="flex-end">
          <Grid item md={true} sm={true} xs={true}>
            <TextField id="username" label="Password" fullWidth required />
          </Grid>
        </Grid>
        <Grid
          container
          style={{ marginTop: "2em" }}
          alignItems="center"
          justify="space-between"
        >
          <Grid item>
            <FormControlLabel
              control={<Checkbox color="primary" />}
              label="Remember me"
            />
          </Grid>
          <Grid item>
            <Button
              disableFocusRipple
              disableRipple
              style={{ textTransform: "none" }}
              variant="text"
              color="primary"
            >
              Forgot password ?
            </Button>
          </Grid>
        </Grid>
        <Grid container justify="center" style={{ marginTop: "10px" }}>
          <Button
            variant="outlined"
            color="primary"
            style={{ textTransform: "none" }}
          >
            Login
          </Button>
        </Grid>
      </Paper>
    </div>
  );
}

LoginForm.propTypes = {
  classes: PropTypes.object.isRequired
};

export default withStyles(loginStyles)(LoginForm);

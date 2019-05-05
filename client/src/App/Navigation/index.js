import React from 'react';
import AppBar from '@material-ui/core/AppBar';
import Toolbar from '@material-ui/core/Toolbar';
import Typography from '@material-ui/core/Typography';
import Drawer from "@material-ui/core/Drawer";

function Navigation() {
  return (
    <AppBar position ="static">
      <Toolbar>
        <Typography variant="title" color="inherit">
          AnotherQL
        </Typography>        
      </Toolbar>
    </AppBar>
  )
}

export default Navigation;
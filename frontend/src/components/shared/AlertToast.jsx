import React, { useEffect, useState } from 'react';
import Snackbar from '@material-ui/core/Snackbar';
import MuiAlert from '@material-ui/lab/Alert';
import { makeStyles } from '@material-ui/core/styles';
import PropTypes from 'prop-types';

const useStyles = makeStyles((theme) => ({
  root: {
    width: '100%',
    '& > * + *': {
      marginTop: theme.spacing(2),
    },
  },
}));

function Alert(props) {
  // eslint-disable-next-line react/jsx-props-no-spreading
  return <MuiAlert elevation={6} variant="filled" {...props} />;
}

const AlertToast = (props) => {
  const classes = useStyles();
  const [open, setOpen] = useState(false);
  const [severity, setSeverity] = useState('info');
  const [message, setMessage] = useState('');

  // Set state from props
  useEffect(() => {
    setMessage(props.message);
    setSeverity(props.severity);
    setOpen(props.open);
  }, [props]);

  // Allow for manual closing
  const handleClose = (event, reason) => {
    if (reason === 'clickaway') {
      return;
    }

    setOpen(false);
    // Clear alert props in parent to prevent the alert reopening
    props.setAlertProps({});
  };

  return (
    <div className={classes.root}>
      <Snackbar open={open} autoHideDuration={6000} onClose={handleClose}>
        <Alert onClose={handleClose} severity={severity} data-cy="alert-toast">
          { message }
        </Alert>
      </Snackbar>
    </div>
  );
};

export default AlertToast;

AlertToast.propTypes = {
  message: PropTypes.string,
  open: PropTypes.bool,
  severity: PropTypes.oneOf(['info', 'warning', 'success', 'error']),
  setAlertProps: PropTypes.func.isRequired,
};

AlertToast.defaultProps = {
  message: '',
  open: false,
  severity: 'info',
};

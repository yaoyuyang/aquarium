import React from 'react';
import Button from '@material-ui/core/Button';
import AddIcon from '@material-ui/icons/Add';
import { makeStyles } from '@material-ui/core/styles';
import PropTypes from 'prop-types';

const useStyles = makeStyles((theme) => ({
  root: {
    margin: theme.spacing(2),
  },
  createButton: {
    backgroundColor: '#136390',
    color: 'white',
  },
}));

const CreateAnnouncementButton = ({ handleShow }) => {
  const classes = useStyles();

  return (
    <Button
      className={classes.createButton}
      onClick={handleShow}
      variant="contained"
    >
      <AddIcon className={classes.addIcon} /> Create Announcement
    </Button>
  );
};

CreateAnnouncementButton.propTypes = {
  handleShow: PropTypes.func.isRequired,
};

export default CreateAnnouncementButton;

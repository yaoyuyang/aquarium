import { makeStyles } from '@material-ui/core';
import Container from '@material-ui/core/Container';
import TextField from '@material-ui/core/TextField';
import Typography from '@material-ui/core/Typography';
import React, { useState, useEffect } from 'react';
import Grid from '@material-ui/core/Grid';
import { FieldLabels, SampleTypeField } from './SampleTypeFieldForm';
import API from '../../helpers/API';
import LoadingBackdrop from '../shared/LoadingBackdrop';
import { StandardButton } from '../shared/Buttons';

const useStyles = makeStyles(() => ({
  container: {
    minWidth: 'lg',
    overflow: 'auto',
  },
  title: {
    fontSize: '2.5rem',
    fontWeight: '700',
    marginTop: '12px',
    marginBottom: '30px',
  },
  inputName: {
    fontSize: '1rem',
    fontWeight: '700',
  },
}));

const initialSampleType = {
  id: null,
  name: '',
  description: '',
};

const newFieldType = {
  id: null,
  name: '',
  ftype: '',
  required: false,
  array: false,
  choices: '',
  allowable_field_types: [],
};

const SampleTypeDefinitionForm = () => {
  const classes = useStyles();
  const [sampleTypeName, setSampleTypeName] = useState(initialSampleType.name);
  const [sampleTypeDescription, setSampleTypeDescription] = useState(initialSampleType.description);
  const [fieldTypes, setFieldTypes] = useState([newFieldType]);
  const [sampleTypes, setSampleTypes] = useState([]);
  const [isLoading, setIsLoading] = useState(true);

  /*  Get sample types top populate sample options menu
      We cannot use async directly in useEffect so we create an async function that we will call
      from w/in useEffect.
      Our async function gets and sets the sampleTypes.
      We only want to fetch data when the component is mounted so we pass an empty array as the
      second argument to useEffect  */
  useEffect(() => {
    const fetchData = async () => {
      const data = await API.samples.getTypes();
      setSampleTypes(data.sample_types);
      setIsLoading(false);
    };

    fetchData();
  }, []);

  // Handle click add field button --> add new field type to end of current field types array
  const handleAddFieldClick = () => {
    setFieldTypes([...fieldTypes, newFieldType]);
  };

  // Handle click add new sample to the end of the allowable fields array
  const handleAddAllowableFieldClick = (index) => {
    const list = [...fieldTypes];
    if (list[index].allowable_field_types === undefined) {
      list[index].allowable_field_types = [];
    }
    list[index].allowable_field_types.push({});
    setFieldTypes(list);
  };

  // handle click event of the Remove button
  const handleRemoveFieldClick = (index) => {
    const list = [...fieldTypes];
    list.splice(index, 1);
    setFieldTypes(list);
  };

  // handle field type input change
  const handleFieldInputChange = (value, index) => {
    const list = [...fieldTypes];
    list[index] = value;
    setFieldTypes(list);
  };

  // create array of field components
  const fieldTypeList = fieldTypes.map((fieldType, index) => (
    <SampleTypeField
      // eslint-disable-next-line react/no-array-index-key
      key={`${fieldType.id}-${index}`}
      fieldType={fieldType}
      sampleTypes={sampleTypes}
      index={index}
      updateParentState={handleFieldInputChange}
      handleRemoveFieldClick={() => handleRemoveFieldClick}
      handleAddAllowableFieldClick={handleAddAllowableFieldClick}
    />
  ));

  // Submit form with all data
  const handleSubmit = (event) => {
    event.preventDefault();
    const formData = {
      id: null,
      name: sampleTypeName,
      description: sampleTypeDescription,
      field_types: fieldTypes,
    };
    API.samples.create(formData);
  };

  return (
    <Container maxWidth="xl" data-cy="sampe-type-definition-container">
      <LoadingBackdrop isLoading={isLoading} />
      <Typography variant="h1" align="center" className={classes.title}>
        Defining New Sample Type
      </Typography>

      <Typography align="right">* field is required</Typography>

      <form name="sampe-type-definition-form" data-cy="sampe-type-definition-form" onSubmit={handleSubmit}>
        <Typography variant="h4" className={classes.inputName} display="inline">
          Name
        </Typography>
        <Typography variant="overline" color="error">
          {' * '}
        </Typography>

        <TextField
          name="name"
          fullWidth
          value={sampleTypeName}
          id="sample-type-name-input"
          onChange={(event) => setSampleTypeName(event.target.value)}
          variant="outlined"
          autoFocus
          required
          type="string"
          inputProps={{
            'aria-label': 'sample-type-name-input',
            'data-cy': 'sample-type-name-input',
          }}
          // TODO: Error HANDLING -- ONLY SHOW HELPER TEXT ON ERROR
        />

        <Typography variant="h4" className={classes.inputName} display="inline">
          Description
        </Typography>
        <Typography variant="overline" color="error">
          {' * '}
        </Typography>

        <TextField
          name="description"
          fullWidth
          value={sampleTypeDescription}
          id="sample-type-description-input"
          onChange={(event) => setSampleTypeDescription(event.target.value)}
          variant="outlined"
          type="string"
          required
          inputProps={{
            'aria-label': 'sample-type-description-input',
            'data-cy': 'sample-type-description-input',
          }}
          // TODO: Error HANDLING -- ONLY SHOW HELPER TEXT ON ERROR
        />

        {!!fieldTypeList.length && (
          <Grid
            container
            spacing={1}
            style={{ marginTop: '1rem' }}
            data-cy="fields-container"
          >
            <FieldLabels />
            {fieldTypeList}
          </Grid>
        )}

        <StandardButton
          name="add-new-field"
          testName="add-new-field"
          handleClick={handleAddFieldClick}
          text="Add New Field"
        />

        <StandardButton
          name="save"
          testName="save-sample-type"
          handleClick={handleSubmit}
          text="Save"
          type="submit"
          dark
        />
      </form>
    </Container>
  );
};

export default SampleTypeDefinitionForm;
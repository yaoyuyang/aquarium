var thisId

describe('/wizards', () => {
  beforeEach(() => {
    cy.login();
  });

  afterEach(() => {
    cy.logout();
  });

  // wizard page
  it('wizard page', () => {
    cy.intercept('GET', '/wizards/new').as('newwizard')

    cy.visit('/wizards');
    cy.contains('h1', 'All');
    cy.get('[data-cy="new_wizard_btn"]').click().then(() => {
      // wait for up to 3 seconds for the page to load
      cy.location('pathname', {timeout: 3000}).should('eq', '/wizards/new');
    });
  });

  // new wizard page
  it('new wizard page', () => {
    cy.intercept('POST', 'http://localhost:3001/api/v3/wizards/create').as('newwizard')

    cy.visit('/wizards/new');
    cy.contains('h1', 'New Wizard');
    cy.get('input[name="name"]')
      .type("name")
      .should("have.value", "name");

    cy.get('input[name="description"]')
      .type("description")
      .should("have.value", "description");

    // not worried about field names here
    // they are just sent to the backend as a json string

    cy.get("form").submit()
    cy.wait('@newwizard').should(({ request, response }) => {
      expect(response.statusCode).to.eq(201)

      // save the id of the wizard just created
      thisId = response.body.wizard['id']
    })
  });

  // click edit wizard
  it('edit wizard', () => {
    cy.visit('/wizards');
    cy.get(`[data-cy="edit_${thisId}"]`).click().then(() => {
      // wait for up to 3 seconds for the page to load
      cy.location('pathname', {timeout: 3000}).should('eq', `/wizards/${thisId}/edit`);
    });
  });

  // edit the wizard
  it('new wizard page', () => {
    cy.intercept('POST', `http://localhost:3001/api/v3/wizards/${thisId}/update`).as('editwizard')

    cy.visit(`/wizards/${thisId}/edit`);
    cy.contains('h2', `Edit Wizard ${thisId}`);
    cy.get('input[name="name"]')
      .type("2")
      .should("have.value", "name2");

    cy.get('input[name="description"]')
      .type("2")
      .should("have.value", "description2");

    cy.get("form").submit()
    cy.wait('@editwizard').should(({ request, response }) => {
      expect(response.statusCode).to.eq(200)
    })
  });

  // delete wizard
  it('delete wizard', () => {
    cy.visit('/wizards');
    // delete wizard
    cy.get(`[data-cy="delete_${thisId}"]`).click().then(() => {
      // wait for up to 3 seconds for the page to load
      cy.location('pathname', {timeout: 3000}).should('eq', `/wizards`);
      // wizard should no longer exist
      cy.get(`[data-cy="delete_${thisId}"]`).should('not.exist');
    });
  });
});
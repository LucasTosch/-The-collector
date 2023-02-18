// Cette fonction renvoie vers la page précédente du site si l'utilisateur était déjà dessus
// Sinon (page externe au site) renvoie à la homepage

function backToPage() {
    var regexTest = /http:\/\/www.the-collector.xyz(.?)/;
    if (regexTest.test(document.referrer)) {
      history.back();
    } else {
      window.location.href = 'https://www.the-collector.xyz';
    }
}
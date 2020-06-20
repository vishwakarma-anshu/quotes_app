class Quote {
  String author;
  String quote;

  Quote({this.quote, this.author}) {
    if(this.author == '' || this.author == null) {
      this.author = 'Someone';
    }
  }
}
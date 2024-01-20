import mysql from "mysql2"

const connection = mysql.createPool({
    host: "db4free.net",
    user: "root",
    password: "",
    database: "Library",
}).promise();

export const getAllBooks = async () => {
    const books = await connection.query('SELECT * FROM Book');
    return books;
  };
  
  // Get all authors
  export const getAllAuthors = async () => {
    const authors = await connection.query('SELECT DISTINCT author FROM Book');
    return authors;
  };
  
  // Get books published after the year 2000
  export const getBooksAfterYear2000 = async () => {
    const books = await connection.query('SELECT * FROM Book WHERE YEAR(published_date) > 2000');
    return books;
  };
  
  // Get the total number of books
  export const getTotalBooks = async () => {
    const result = await connection.query('SELECT COUNT(*) AS total_books FROM Book');
    return result[0].total_books;
  };
  
  // Get books sorted by publication date in descending order
  export const getBooksSortedByDate = async () => {
    const books = await connection.query('SELECT * FROM Book ORDER BY published_date DESC');
    return books;
  };
  
  // Usage examples:
  // const allBooks = await getAllBooks();
  // const authorBooks = await getBooksByAuthor('AuthorName');
  // const date = await getPublishedDate('BookName');
  // const author = await getAuthor('BookName');
  // const booksAfterDate = await getBooksAfterDate('2022-01-01');
-- In MySQL, as in many other relational database management systems, 

-- there are various data types available to define the type of data that can be stored in each column of a table. 
-- These data types can be broadly categorized into numeric, date and time, string, and spatial types.
--  Here's an overview of the commonly used data types in MySQL:

-- 1. **Numeric Data Types**:
--    - `INT`: Integer type, can store whole numbers.
--    - `BIGINT`: Large integer type for very large numbers.
--    - `FLOAT`: Floating-point type for approximate numeric values.
--    - `DOUBLE`: Double-precision floating-point type for large floating-point numbers.
--    - `DECIMAL`: Fixed-point type for exact numeric values with a specified precision and scale.

-- 2. **Date and Time Data Types**:
--    - `DATE`: Date type in the format 'YYYY-MM-DD'.
--    - `TIME`: Time type in the format 'HH:MM:SS'.
--    - `DATETIME`: Combination of date and time in the format 'YYYY-MM-DD HH:MM:SS'.
--    - `TIMESTAMP`: Stores the number of seconds since the Unix epoch (January 1, 1970).
--    - `YEAR`: Year type, stores a year in 2-digit or 4-digit format.

-- 3. **String Data Types**:
--    - `CHAR`: Fixed-length string type, padded with spaces as necessary.
--    - `VARCHAR`: Variable-length string type, stores variable-length strings up to a maximum length.
--    - `TEXT`: Variable-length string type for large text data, with a maximum length.
--    - `ENUM`: Enumeration type, stores one of several predefined values.
--    - `SET`: Set type, stores a set of predefined values.

-- 4. **Binary Data Types**:
--    - `BINARY`: Fixed-length binary string type.
--    - `VARBINARY`: Variable-length binary string type.
--    - `BLOB`: Binary large object type for storing large binary data.
--    - `BIT`: Bit-field type, stores bit-field values.

-- 5. **Spatial Data Types**:
--    - `GEOMETRY`: Represents geometry values such as points, lines, and polygons.
--    - `POINT`: Represents a point in a two-dimensional coordinate system.
--    - `LINESTRING`: Represents a sequence of points to form a line.
--    - `POLYGON`: Represents a polygon with a series of points.

-- These are some of the commonly used data types in MySQL.
--  Each data type has specific characteristics, storage requirements, and supported operations. When designing a database schema, 
--  it's important to choose the appropriate data type for each column to ensure efficient storage and manipulation of data.

-- Numeric Data Types:

CREATE TABLE numeric_example (
    id INT,
    quantity INT,
    price DECIMAL(10, 2),
    rating FLOAT
);

-- In this example:

-- id is an integer type.
-- quantity is also an integer type.
-- price is a decimal type with a precision of 10 digits and a scale of 2 (meaning it can store up to 10 digits with 2 decimal places).
-- rating is a floating-point type.

-- Date and Time Data Types:

CREATE TABLE date_time_example (
    id INT,
    event_date DATE,
    event_time TIME,
    event_datetime DATETIME,
    last_updated TIMESTAMP
);

-- Here:

-- event_date stores a date in 'YYYY-MM-DD' format.
-- event_time stores a time in 'HH:MM:SS' format.
-- event_datetime stores both date and time in 'YYYY-MM-DD HH:MM:SS' format.
-- last_updated stores a timestamp indicating the last update time. It automatically updates whenever the row is modified.


-- String Data Types:
CREATE TABLE string_example (
    id INT,
    name VARCHAR(50),
    description TEXT,
    status ENUM('Active', 'Inactive', 'Pending'),
    tags SET('Red', 'Green', 'Blue')
);

-- In this table:

-- name is a variable-length string with a maximum length of 50 characters.
-- description is a variable-length string for storing large text data.
-- status is an enumeration type, allowing only specific predefined values.
-- tags is a set type, allowing a combination of predefined values.

-- Binary Data Types:

CREATE TABLE binary_example (
    id INT,
    binary_data BLOB,
    file_extension ENUM('pdf', 'docx', 'jpg')
);

-- Here:

-- binary_data is a binary large object type for storing large binary data.
-- file_extension is an enumeration type allowing specific file extensions.


-- Spatial Data Types:

CREATE TABLE spatial_example (
    id INT,
    geom GEOMETRY,
    point POINT,
    linestring LINESTRING,
    polygon POLYGON
);

-- In this table:

-- geom is a geometry type for storing various spatial data.
-- point stores a point in a two-dimensional coordinate system.
-- linestring represents a sequence of points forming a line.
-- polygon represents a polygon with a series of points.




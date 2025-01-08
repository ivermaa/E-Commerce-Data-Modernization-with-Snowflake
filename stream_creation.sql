--to identify new rows coming in bronze customer layer, we need to create stream
-- since we are doing incremental load, we need to identify these rows
--bronze layer since we are dealing with new rows coming in

--whenever a new record comes in or any record get updated, we will get to know under this stream

--create stream to get incremental rows

CREATE OR REPLACE STREAM customer_changes_stream ON TABLE customer_table
    APPEND_ONLY = TRUE;


CREATE OR REPLACE STREAM product_changes_stream ON TABLE product_table
    APPEND_ONLY = TRUE;
    
CREATE OR REPLACE STREAM order_changes_stream ON TABLE order_table
    APPEND_ONLY = TRUE;

show streams in pacificretail_db.bronze
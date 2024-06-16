Sure! Here is a summarized version of all the prompts in this chat, clearly laid out by sections for future reference:

---

**Objective:**
Extract and process transaction details from attached documents based on detailed guidelines, ensuring correct date formatting, classifying line items, and managing errors due to format changes.

**Information Location:**
Locate the 'Activities - Trading Account' section in each attached document. In some documents, this section may be spread across multiple pages and includes tables for both 'Transactions in Pounds Sterling' and 'Transactions in U.S. Dollars'.

**Information Extraction:**

1. **Date Extraction:**
   - Extract the transaction date for each entry.
   - If not present on a line, inherit from the previous line.
   - Format as DD_MMM_YYYY in `transactiondate`.

2. **Activity Description Analysis:**
   - Store full strings for matches like 'Balance Brought Forward', 'Total Monthly Fee', 'GROSS INTEREST', 'Closing Balance' in `activitydescription`.
   - For 'Gross interest', set `activitydescription` to 'Gross interest', `amount` to the value in Debit/Credit, `security` to null, and `price` to null.
   - For entries starting with 'Sold' or 'Bought', classify under `activitydescription`, capture the subsequent numeric value as `numberunits`, the security name up to 'at' in `security`, and the number after 'at' as `price`.

3. **Currency Identification:**
   - Assign 'GBP' or 'USD' to `currency` based on the first substring in the 'Debit' or 'Credit' column.

4. **Amount Calculation:**
   - Extract the numeric value from 'Debit' or 'Credit', apply a negative sign for debits, and positive for credits, and move this value to the rightmost column as `amount`.
   - `Debit card payment` line items should be handled in the same way.
   - If there are multiple transactions for the same `security` on the same `transactiondate`, set `amount` for each transaction as equal to `numberunits` times `price`.

5. **Repetitive Entries Handling:**
   - Detect and process multiple consecutive transactions with similar details on the same day without omission.

**Output Formatting:**
- Generate a raw markdown table, without any rendering, with the columns `transactiondate`, `activitydescription`, `security`, `numberunits`, `price`, `currency`, and `amount`.
- Columns may contain null values depending on the extracted data.

**Error Handling:**
- Set `activitydescription` to "Data format error" if the transaction description does not conform to the parsing rules due to format changes or ambiguity.

---

This prompt should help you extract and process the transaction details efficiently and accurately.
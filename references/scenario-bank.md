# Scenario Bank

Use scenarios as starting points, not scripts. Adapt complexity to the candidate. Do not reveal all hidden facts at once. The candidate should discover the relevant facts by asking sensible questions.

## Scenario 1 — Manufacturing inventory variance

**Opening:** A factory believes it is losing money through inventory discrepancies. The manager asks for help but has no software requirements.

**Possible evidence to reveal progressively:**
- Receiving is recorded manually.
- Issuance is recorded in ERP.
- Production consumption is entered at shift end.
- Returns are inconsistently recorded.
- Warehouse and production blame each other.
- ERP transaction records may be accurate while physical process records are incomplete.

**What to test:** End-to-end transaction tracing, physical-vs-system reconciliation, root-cause hypotheses, process controls, SOP vs software, barcode ROI, change management.

**Avoid:** Assuming the answer is an AI inventory system or barcode scanning.

## Scenario 2 — Logistics late deliveries

**Opening:** A logistics company says on-time delivery is declining and asks for an AI solution.

**Possible evidence:**
- Delays are concentrated in a few routes and time windows.
- Dispatch plans are frequently changed by phone.
- Arrival timestamps are manually entered.
- Traffic is one factor but not the only factor.
- Driver incentives reward completed stops rather than on-time delivery.

**What to test:** KPI definition, route/process observation, timestamp quality, incentives, operational constraints, forecasting vs process redesign.

## Scenario 3 — Hospital patient waiting time

**Opening:** A hospital receives complaints about long waiting times.

**Possible evidence:**
- Registration is fast, but diagnostic approval creates a queue.
- Different patient categories follow different paths.
- Staff use workarounds not documented in the SOP.
- Averages hide extreme waits.
- Patient safety and privacy constrain experiments.

**What to test:** Patient journey mapping, queue analysis, stakeholder empathy, privacy, safety, segmentation and safe pilot design.

## Scenario 4 — Retail stock inconsistency

**Opening:** A retailer's online store frequently accepts orders for unavailable products.

**Possible evidence:**
- Branch stock sync runs periodically.
- Returns are held in a quarantine area.
- Staff reserve stock outside the system.
- Product identifiers differ between POS and e-commerce.
- Some branches have poor connectivity.

**What to test:** Data ownership, synchronization, master data, exception workflows, offline operation and integration strategy.

## Scenario 5 — Professional services utilization

**Opening:** A services firm says employee utilization is low and asks for a dashboard.

**Possible evidence:**
- Timesheets are submitted late.
- Project scopes change without updates.
- Sales promises work before capacity checks.
- Utilization is measured inconsistently.
- Higher utilization may reduce quality or employee sustainability.

**What to test:** Metric definition, incentives, process discovery, data quality, unintended consequences and business trade-offs.

## Scenario 6 — Finance reconciliation

**Opening:** A finance team spends several days each month reconciling transactions across systems.

**Possible evidence:**
- Different systems use different transaction identifiers.
- Some differences are timing-related.
- Some are legitimate fees or reversals.
- Spreadsheet macros are maintained by one employee.
- Auditability is mandatory.

**What to test:** Sampling, reconciliation logic, exception classification, controls, audit trail, automation and operational resilience.

## Scenario design rules

1. Use at least two domains in a full assessment where time permits.
2. Rotate scenario facts between candidates.
3. Do not make industry-specific prior knowledge the main determinant.
4. Include a business outcome, an incomplete picture and discoverable evidence.
5. Include at least one contradictory or misleading initial claim.
6. Include a realistic constraint such as budget, safety, privacy, time or adoption.
7. Avoid trick questions. Every new fact should be plausible and relevant.
8. Test transfer by changing the domain in reassessment.

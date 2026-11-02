# CERN CMS four-muon source → unrestricted UniversalWaveformInput (2026-11-02)

**Research source:** CERN Open Data Portal [record 5200](https://opendata.cern.ch/record/5200), McCauley (2019), DOI [10.7483/OPENDATA.CMS.YGG7.333M](https://doi.org/10.7483/OPENDATA.CMS.YGG7.333M), 2011–2012 Higgs-to-four-lepton educational selection. This particular file is `4mu_2012.csv`. The official CMS [education repository](https://github.com/cms-opendata-education/cms-jupyter-materials-english) publishes the unchanged CSV at commit `fd23734a71b863d944d44f7dbe9c0d0261c5302b`, path `Data/4mu_2012.csv`, Git blob `4d87fe4e859802bb225d722353c10148b96e7a95`. The CERN portal labels the derived dataset CC0; the CMS education repository carries its own CC-BY notice for educational materials. Neither CERN nor CMS endorses this work.

**Input status:** A complete, real selected CMS dataset, not synthetic detector data or randomly sampled amplitude. The CMS open-data record states that these events were selected for education/outreach and are **not suitable for a full physics analysis**. No new Higgs discovery, measured sampling rate, detector timestamps, spectral relation or RH claim is attributed to these data.

## 1. Original source held constant

The *entire* original CSV file is copied without changes to:

`data/cern/CMS_4mu_2012.csv` (28,664 bytes, Git blob `4d87fe4e859802bb225d722353c10148b96e7a95`).

Its 41 original fields remain in their original order, with 95 original data rows and 95 distinct `Run,Event` string pairs. The original full-precision text for every row is retained; no event is excluded, repeated, reordered, normalized, interpolated or inferred.

`data/cern/CMS_4mu_2012_waveform.json`, blob `9d778b045afa06aa9e305b20bfa0d8fac3149da0`, is a *derived* machine-readable view, containing for all 95 rows the original entire source line, original Run/Event lexemes, original `M` field, and its exact base-10 mantissa and scale.

The selected scalar `M` is the measured/reconstructed **four-lepton invariant mass**, in GeV, as supplied in the educational CSV. Its observed source values range from **84.6431 to 742.146 GeV**. The arithmetic mean of the 95 printed source decimals is exactly `188031319/950000` GeV (approximately 197.9277042105 GeV). No physical-time integral is inferred from this event sequence.

## 2. How actual CERN rows feed the universal source interface

The original implemented source is `GRWTSK.MeasureAndIntegration.UniversalWaveformInput.UniversalInput` (file `GRWTSK/MeasureAndIntegration/UniversalWaveformInput.lean`, immutable Git blob `639bd1f0954197c8b53510c38c8f54f61e29cd90`):

```lean
structure UniversalInput (Time : Type u) (Amplitude : Type v) where
  source : Time → Amplitude
```

It imposes **no amplitude, regularity, clock or finite-support prerequisite**. The adapter is separate, in `GRWTSK/MeasureAndIntegration/CERNOpenDataWaveform.lean`, source candidate blob `5ca37d1507fbaa89cf7addbf5eb1ee0f3539a0bd`. It constructs:
- `CMSFourMuonEvent`: the full original verbatim CSV record plus original `Run`, `Event` and `M` lexemes and an exact decimal mantissa/scale pair.
- `originalRows`: all 95 records in CSV order; `EventIndex := Fin originalRows.length`.
- `eventInput : UniversalInput EventIndex CMSFourMuonEvent`: **complete source record** at every event ordinal, without numerical projection.
- `rawCSVInput` and `massLexemeInput`: exact lexical readings of the same source.
- `massInput : UniversalInput EventIndex ℝ`: an *optional, explicitly lossy* projection to the numerical `M` field, as `massMantissa / 10^massScale`.

The module supplies source-level `rfl` return theorems for the record, entire raw CSV row, lexical mass and its numerical projection. It does **not** prove that the mass alone reconstructs the 41-field source; the source input remains available for recovery. The printed decimal reconstruction was checked against the official CSV in an independent ingestion audit, but native Lean typechecking has not been run.

**Critical semantic distinction:** An event index is not a physical timestamp. `Fin 95` is the original CSV row ordinal and does not imply uniform temporal spacing. The interval-real energy operator `realEnergy` is **not** applied to this discrete event input. A meaningful time-domain CERN waveform requires an authentic detector timestamp or waveform time axis and the relevant regularity assumptions. Neither `M` nor event-number fields are coerced to a detector clock.

## 3. Source provenance and executable replay

The independently authored stdlib-only replay validator `scripts/cern/verify_cms_4mu_waveform.py`, Git blob `f9bd21d2a2a111b004b754760622dfdc76ea0880`, checks:

1. Git-blob SHA-1 over the complete original file bytes matches the pinned official CMS education source blob (the identifier is the Git repository blob format, not a cryptographic security assertion).
2. The complete 41-column source schema and all 95 records are unchanged and contain 95 distinct `Run,Event` string pairs.
3. The derived JSON contains *exactly* one sample per source row in the same row order, with every original byte of every row preserved.
4. Every mass lexeme, exact decimal mantissa and scale is reconstructed exactly, using Python `Decimal` without floating-point rounding.
5. The report explicitly states that row ordinal is not physical time and native Lean checks have not run.

Reproducibility from the source checkout:

```bash
python3 scripts/cern/verify_cms_4mu_waveform.py
```

During this ChatGPT turn, the official pinned source was fetched through the connected GitHub app and checked by independent JavaScript before source creation. The complete original CSV was re-created as a Git blob and its SHA matched the official source byte-for-byte. All 95 rows had 41 columns; all 95 `Run,Event` pairs were distinct; all 95 mass lexemes were valid finite decimal amplitudes. The exact printed mass sum at 4 decimal places was `188031319` units of (10^{-4}) GeV, giving the mean displayed above. The Git-mirrored script is provided for later independent Python replay; it was not falsely claimed to have run against local original bytes in this environment.

## 4. Verification and mathematical boundary

The original universal input source `UniversalWaveformInput.lean` remains untouched. The CERN adapter creates a new client that supplies the entire CSV record as an arbitrary amplitude type. It does not modify the original Möbius `wholePickup`, its two-bit sign codec, `pickupCross`, endpoint quadrature or the canonical RH completion theorem.

These CMS observations can be analyzed, plotted by event ordinal, reconstructed from the preserved source records, and transported through future verified comparison maps. They are **not** an arithmetic sign source, not a CERN physical voltage/current time waveform, and supply no new estimate of the original signed Möbius energy.

**Acceptance ledger:** original source Git blob exact match PASS; JSON row/field projection diagnostic PASS in connected-source JavaScript; source publication and Git readback must be checked after publication; Python replay script execution NOT_RUN in this environment; Lean compilation NOT_RUN, fresh trust=0 kernel replay NOT_RUN, expected theorem interfaces NOT_RUN, complete transitive axiom audit NOT_RUN. No RH progress or physical CERN endorsement claimed.

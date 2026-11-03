# Liouville weighted-prefix two-adic chain reduction

- **Attribution/date:** grwtsk contributors, 2026-10-31.
- **Research scope:** `6ae605b4-a7b4-83e8-9ada-ee9c9089476b`.
- **Classification:** elementary original source reindexing and alternating-geometric evaluation; no external analytic theorem is used.
- **Predecessor source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixDoubling.lean`, commit `1852830daec2fcd8529fe91b7930a40151920611`.
- **New source:** `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixTwoAdicChains.lean`.
- **Exact result:** every complete same-odd-core ordered packet equals a positive alternating-geometric chain mass bounded by `1/q`; the total same-core packet is between zero and the harmonic prefix.  Hence the weighted-prefix all-rate problem is equivalent, up to a harmonic allowance, to the complete signed packet between distinct odd cores.
- **Novelty boundary:** this sharpens the exact diagonal/doubling cancellation by paying all ratios `2^j` inside one two-adic orbit.  It does not provide cancellation between different odd cores and does not prove `WeightedPrefixSquareAllRate`, `UniformEnergySupplier`, the endpoint estimate, or RH.
- **Verification:** source proof candidate; compilation, expected interfaces, fresh kernel replay and transitive axiom audit `NOT_RUN`.

# Verification target: Number Theory Kummer Dedekind Mem Coe Submodule Conductor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12577f8b7e47b53b0c01c02c003ea6e02db78377",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/index.md) · [Full source](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12577f8b7e47b53b0c01c02c003ea6e02db78377`.

Source path: `GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IsAdjoinRoot` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [conductor](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/conductor.md) | 63 | `declaration-track:fd3b11fa1e7e8f15469a4cb96084c17845cbeb4b9e707f294c0ba7f1f0db52da` |
| 2 | `theorem` | [conductor_eq_of_eq](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/conductor-eq-of-eq.md) | 71 | `result-track:0aee27cb2aba232d5b7d1691c1d516f7e150a0f31a83a7dc91f86ce8c214923b` |
| 3 | `theorem` | [conductor_subset_adjoin](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/conductor-subset-adjoin.md) | 74 | `result-track:8a75bad0cf100645f57962b423c02e228db02e0cd80ce97dfbbe362a9c027b13` |
| 4 | `theorem` | [mem_conductor_iff](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/mem-conductor-iff.md) | 77 | `result-track:156af13f3477afbc48743ee8c860d6eb8e02459a34eca8373e1a94fb5513be0f` |
| 5 | `theorem` | [conductor_eq_top_of_adjoin_eq_top](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/conductor-eq-top-of-adjoin-eq-top.md) | 80 | `result-track:fce0427bfddcb6f4803b0008288775d843bfbc7c7b28e25e67c5862c1eacd1e3` |
| 6 | `theorem` | [conductor_eq_top_of_powerBasis](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/conductor-eq-top-of-powerbasis.md) | 83 | `result-track:fcc94b6cd55b641d2be5286a8dc80d8a5f60a753c76a799bd5a66d8d3e63d9cb` |
| 7 | `lemma` | [mem_coeSubmodule_conductor](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/mem-coesubmodule-conductor.md) | 87 | `result-track:d467d993052953afa5e62c5bf1f362122996822b5eb22180a73e54ffae102dac` |
| 8 | `theorem` | [prod_mem_ideal_map_of_mem_conductor](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/prod-mem-ideal-map-of-mem-conductor.md) | 112 | `result-track:7ba09ad8d6ebcf8b23111c9dd881a70997edb289a739f90b24fa9de414b73872` |
| 9 | `theorem` | [comap_map_eq_map_adjoin_of_coprime_conductor](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/comap-map-eq-map-adjoin-of-coprime-conductor.md) | 144 | `result-track:c9abad66f3b717689c97e4db8d8f07077e3af778424ce459f05588d8cd60cfe6` |
| 10 | `def` | [quotAdjoinEquivQuotMap](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/quotadjoinequivquotmap.md) | 182 | `declaration-track:4b0c2c050213b71bd2ccc7616b71a9367ff797d9d3a6f386648db00447b1b111` |
| 11 | `theorem` | [quotAdjoinEquivQuotMap_apply_mk](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/quotadjoinequivquotmap-apply-mk.md) | 218 | `result-track:b8d0452b05740b78e0c4e49188dbb121ef96c6ff290760f4a906542ea45c73fb` |
| 12 | `def` | [f](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/f.md) | 233 | `declaration-track:f4b0bb41709db6513134c3e9238ba82d9b50894786d8c4889c2beaa79856734c` |
| 13 | `lemma` | [f_symm_aux](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/f-symm-aux.md) | 241 | `result-track:d2991bf6e32d4b9843b1daf7be1079763107b415c7e7181f5b3702fcdcc5d803` |
| 14 | `def` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk.md) | 259 | `declaration-track:a2f88aaa8170d6eeab51169046459e07ae486959266a00c204c685bb1301a05f` |
| 15 | `theorem` | [emultiplicity_factors_map_eq_emultiplicity](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/emultiplicity-factors-map-eq-emultiplicity.md) | 275 | `result-track:14b371b43c0cac75d0bb75fce90b6b3c3b480293f7ec49775c4f8efecda42725` |
| 16 | `theorem` | [normalizedFactors_ideal_map_eq_normalizedFactors_min_poly_mk_map](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/normalizedfactors-ideal-map-eq-normalizedfactors-min-poly-mk-map.md) | 288 | `result-track:db6645c61660415a72400a3f80927970f94fbe9779695519eb7fb9f3052f2338` |
| 17 | `theorem` | [Ideal.irreducible_map_of_irreducible_minpoly](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/ideal-irreducible-map-of-irreducible-minpoly.md) | 331 | `result-track:7f2e2e042824dcd4d38a037431c9731574bc5b9ff9bf0397eae508166250baa9` |
| 18 | `theorem` | [normalizedFactorsMapEquivNormalizedFactorsMinPolyMk_symm_apply_eq_span](../../../../NumberTheory/NumberTheoryKummerDedekindMemCoeSubmoduleConductor.lean/declarations/normalizedfactorsmapequivnormalizedfactorsminpolymk-symm-apply-eq-span.md) | 365 | `result-track:78f7525089ce11ba986034a0220dfd2a098c4c5fd757318a4fe7104e5d199241` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c427ca46dde7c7fa54d8cfc3ed20141b563f34f3cc1a1ef5a8ee340defa67ccb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean","GRWTSK/_verification/specifications/Algebra/KummerDedekind/Variant2d950217d1b08e4a3ced3c32562c5e5701076bee19aebc6c6c7f0a32a171e257.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

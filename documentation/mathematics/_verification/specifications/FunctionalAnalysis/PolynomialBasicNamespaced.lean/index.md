# Verification target: Polynomial Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "543735a6dd0ef2e65cbeb1da05740a2ee09a12ab",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `543735a6dd0ef2e65cbeb1da05740a2ee09a12ab`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Roots` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.AsymptoticEquivalent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eventually_no_roots](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/eventually-no-roots.md) | 40 | `result-track:3c2b822b76c3fc50d73641438662dd2e607b9ab7172636d00d7ebd36dfdcc85a` |
| 2 | `theorem` | [isEquivalent_atTop_lead](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/isequivalent-attop-lead.md) | 47 | `result-track:5067a4c2b88745aaa24dd7b9007e9fd31d5fd73ad97d692b66c6e2350ae998fb` |
| 3 | `theorem` | [tendsto_atTop_of_leadingCoeff_nonneg](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/tendsto-attop-of-leadingcoeff-nonneg.md) | 61 | `result-track:41e4e930004f0a9c8b157e1ea7e544009a5567179ffd6fe90b3e1fe017a20cce` |
| 4 | `theorem` | [tendsto_atTop_iff_leadingCoeff_nonneg](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/tendsto-attop-iff-leadingcoeff-nonneg.md) | 67 | `result-track:7a476bfa17711e945f2da7681751e34ef6a8eb9b454bd4528b96e06942931ed3` |
| 5 | `theorem` | [tendsto_atBot_iff_leadingCoeff_nonpos](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/tendsto-atbot-iff-leadingcoeff-nonpos.md) | 75 | `result-track:7f30ff61b70848a54a618ec834c4ac9e493bf38e248d5cf4ebf6875c5ff2553f` |
| 6 | `theorem` | [tendsto_atBot_of_leadingCoeff_nonpos](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/tendsto-atbot-of-leadingcoeff-nonpos.md) | 80 | `result-track:8e8ef19db4ede89b6a4e12acaa89d94f61e5665f2a30b3d7089f6c5a2f6f2eb6` |
| 7 | `theorem` | [abs_tendsto_atTop](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/abs-tendsto-attop.md) | 84 | `result-track:ee1ddac20d52c3e27236ec914fc56b6d2a4e5717da83673cf8fdf1b9908d530e` |
| 8 | `theorem` | [abs_isBoundedUnder_iff](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/abs-isboundedunder-iff.md) | 90 | `result-track:78f1bd810194d56d2fb8e375816db7c01d8a0d71fae50dce82fe71baf43fbd65` |
| 9 | `theorem` | [abs_tendsto_atTop_iff](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/abs-tendsto-attop-iff.md) | 98 | `result-track:11dbe57b9fbf8813a1b37c404c36a1cd275f80f2bf87e84f32727a2b03e724c5` |
| 10 | `theorem` | [tendsto_nhds_iff](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/tendsto-nhds-iff.md) | 102 | `result-track:f1a467e3d63c2ad7b3f7b470c0cecd6a97183da1057f6d1a8d75f5689a9c9f1c` |
| 11 | `theorem` | [isEquivalent_atTop_div](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/isequivalent-attop-div.md) | 120 | `result-track:fc7d68b4f08e606ac582c611cf2f49607f22fddcca16d90885ecf36c3b83dfc5` |
| 12 | `theorem` | [div_tendsto_zero_of_degree_lt](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/div-tendsto-zero-of-degree-lt.md) | 132 | `result-track:3263b5d8dcbd8172686f937b84015092f4781c6cc4eb88bf60d7995175e46992` |
| 13 | `theorem` | [div_tendsto_zero_iff_degree_lt](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/div-tendsto-zero-iff-degree-lt.md) | 142 | `result-track:679a31201003c54d57bdefe9822a5ab5f2fd0e729779ca00812ce8efd1ab0952` |
| 14 | `theorem` | [div_tendsto_leadingCoeff_div_of_degree_eq](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/div-tendsto-leadingcoeff-div-of-degree-eq.md) | 158 | `result-track:0d92324f015214a4300f5dcec6bbdadc6bb9306d9f6d70876ed9aada70c157b9` |
| 15 | `theorem` | [div_tendsto_atTop_of_degree_gt'](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/div-tendsto-attop-of-degree-gt-source-edition-2.md) | 164 | `result-track:72240024382f713510f5f5314615d2a08b9214a6152a36d19e78fb0034ab06c0` |
| 16 | `theorem` | [div_tendsto_atTop_of_degree_gt](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/div-tendsto-attop-of-degree-gt.md) | 176 | `result-track:5b1a33546e8ea8c4edd7477a1a46bdc0291a90886a185e7605ff3ac9ec281d2d` |
| 17 | `theorem` | [div_tendsto_atBot_of_degree_gt'](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/div-tendsto-atbot-of-degree-gt-source-edition-2.md) | 185 | `result-track:ba719846d1ff2934e7815a1a9b95ba916fc7ddef6931eaa10279696ec6c95f53` |
| 18 | `theorem` | [div_tendsto_atBot_of_degree_gt](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/div-tendsto-atbot-of-degree-gt.md) | 197 | `result-track:8b22442907c945586e7a2d0ccc1b9b24a6c9784d1e01a343e0857d0a224dc614` |
| 19 | `theorem` | [abs_div_tendsto_atTop_of_degree_gt](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/abs-div-tendsto-attop-of-degree-gt.md) | 206 | `result-track:1892bbf8267a41934f9f5633825840b30cd62aed869fc3772310e0aa0c4c0bee` |
| 20 | `theorem` | [isBigO_of_degree_le](../../../../FunctionalAnalysis/PolynomialBasicNamespaced.lean/declarations/isbigo-of-degree-le.md) | 215 | `result-track:104a3dad3a9db870fba164b15e39d50c461aad568504c25b675cff8ae726205a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=861ffa2b8b3f0039218b31dca49c6df0f348ecedfb5a132f598f321bd43f4ffa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant34e4d03fe1c088422629eb80e9c2c3595d63e0fcd7963cfe5d3004439afb081e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

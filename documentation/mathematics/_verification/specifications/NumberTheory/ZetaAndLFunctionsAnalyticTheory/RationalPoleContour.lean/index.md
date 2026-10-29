# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RationalPoleContour

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4359b252833c5dc8e46e76b2b0327829fccfe265",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContour.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4359b252833c5dc8e46e76b2b0327829fccfe265`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContour.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RationalPoleContour.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.PolygonTube`](../../../../../GeneralTopology/PolygonTube.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.RationalPolePatch`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPolePatch.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Data.List.GetD` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [EdgeData](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/edgedata.md) | 28 | `declaration-track:4c563990db0bef90485b588e3bfaf19feabe0789c1d976066f74eb0594fcbd54` |
| 2 | `def` | [pointAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/pointat.md) | 36 | `declaration-track:1c22bc86ebeacdc27cda238efbf217a6a99ad12d1aa9b899c7d760c33edfc1fb` |
| 3 | `def` | [edgeAt](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/edgeat.md) | 38 | `declaration-track:b5562867df05c32203e0858d7b77546321a4e67c9b5dc3bd87573ec100cc73cd` |
| 4 | `def` | [EdgeValid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/edgevalid.md) | 41 | `declaration-track:9083e2a5a3b396bf266c5b5bc782f01e767f2cabc09656c1ad0b07a4d407e4e6` |
| 5 | `instance` | [edgeValidDecidable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/edgevaliddecidable.md) | 46 | `declaration-track:805ac68a93deb8dbb6a7183795097e24cde134e54ed04dbec4d27b4b29639a54` |
| 6 | `def` | [Valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/valid.md) | 50 | `declaration-track:a66a437a679ebd81d2dfb50e596894b22487efddaca20055bbd1e02efa8e4c4c` |
| 7 | `instance` | [validDecidable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/validdecidable.md) | 55 | `declaration-track:80343484205ec2a9980c29b6916b85e7b8f6fe1e024c03129af643ef15a4c3ee` |
| 8 | `def` | [check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/check.md) | 60 | `declaration-track:470c655c4b18118b1b323d32368ce9f7463138954a76558f44473e8ee607d1be` |
| 9 | `theorem` | [check_iff_valid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/check-iff-valid.md) | 63 | `result-track:3dd76d16120b94b70ceafc0aab725b09b9c709f1b1f25d42cc193c27018c24a9` |
| 10 | `def` | [Enclosures](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/enclosures.md) | 67 | `declaration-track:25c3a5559510e6164e339cd07d111261204a6513d96178d73972249d2945b182` |
| 11 | `def` | [carrier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/carrier.md) | 71 | `declaration-track:49182e1f6c2727c8e10c212f455f4849d6cc7b691eb6eb2232d14dc3216f8e9e` |
| 12 | `theorem` | [checked_lengths](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/checked-lengths.md) | 74 | `result-track:be4f200d501c8f930f3044a96ec79b7899e8da2babfe403f869e14b0aa22b5bd` |
| 13 | `theorem` | [checked_edge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/checked-edge.md) | 81 | `result-track:d171599365f577806ccf1c47720f90f23b812c78b31ca84d22a465db38f78d99` |
| 14 | `theorem` | [edge_covered](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/edge-covered.md) | 87 | `result-track:d44b7f40da6cda13263d3324add072135af2499c515d2fbf41f971043e1f45a8` |
| 15 | `def` | [finiteCover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/finitecover.md) | 99 | `declaration-track:52855a18f1cc3a539332cbf298d41126f5ef2b47dc3fbf051c947c8456d7fc34` |
| 16 | `theorem` | [check_sound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/check-sound.md) | 110 | `result-track:e86821117607a4f0e3622ddbd7ce2b80b592c4ba72c91ad636adcf4e92c2da0b` |
| 17 | `theorem` | [no_target_on_carrier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/no-target-on-carrier.md) | 116 | `result-track:067b76b6c3e686b796c84ca4827cca221b6bbbccf23b76aadd96a0579edf6e3e` |
| 18 | `def` | [assembledEdge](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/assemblededge.md) | 124 | `declaration-track:6bff9793a83604aeda64184b2cf8234d724aedcbd7f35b39459fe58422a73631` |
| 19 | `theorem` | [assembledEdge_enclosure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/assemblededge-enclosure.md) | 129 | `result-track:042d6d7540025ef011c42925ef1fa9c71f547090a7fac78162a5d8c4968260f4` |
| 20 | `theorem` | [enclosures_of_assemblies](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/RationalPoleContour.lean/declarations/enclosures-of-assemblies.md) | 139 | `result-track:27b7e5c92ad82bacc03ea55f8f985b02b2de7c41cec760fcbeff7f816c624cf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95a9ae5a73a7817d28544fec90456a3c51cb54ac21a3cfa0d930f669e9a1cc3a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/RationalPoleContour.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/RationalPoleContour.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

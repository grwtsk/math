# Verification target: Induced Maps Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "293583c0136be647b00b520209c95076e78bfd01",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/InducedMapsPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/InducedMapsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `293583c0136be647b00b520209c95076e78bfd01`.

Source path: `GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Path.Homotopic.map_trans_evalAt](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/path-homotopic-map-trans-evalat.md) | 40 | `result-track:b46b8cdbcf50e44da18e127bdf0cf81851c5e53a52488bfc530f408408d2bab7` |
| 2 | `def` | [homotopicMapsNatIso](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/homotopicmapsnatiso.md) | 68 | `declaration-track:a4f88688386267d56219e1396eb719cd494c76b04fe3d05f8a28e7be5ee10ce2` |
| 3 | `instance` | [(anonymous)](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/instance.md) | 78 | `declaration-track:a70f590faceee1d2bbfd9e9d8b4a6f13d5fcd2884b88b18f0726f6f596b7d89d` |
| 4 | `def` | [equivOfHomotopyEquiv](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/equivofhomotopyequiv.md) | 84 | `declaration-track:715408017244c4231eaae6acd7ea2bd3b3361c7cca147e7f64854c7187521309` |
| 5 | `def` | [path01](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/path01.md) | 112 | `declaration-track:de0846a163bfafa6bb0a71184d69d09b1640f32bad15f877d580eb0886f6b596` |
| 6 | `def` | [upath01](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/upath01.md) | 118 | `declaration-track:604dbe0ec2d63654d8b828b4370d87b7ca540c9b350a3fd86639030cf9a1a5f1` |
| 7 | `def` | [uhpath01](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/uhpath01.md) | 124 | `declaration-track:a897c708dc4822e4fba564bb3da783c0ebd928296afc7803ef602e15ff10d27e` |
| 8 | `abbrev` | [hcast](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/hcast.md) | 136 | `declaration-track:83b26dbb2993fc6bb60d714933295c9515a91cc20d649f2afef913e61f327f6d` |
| 9 | `theorem` | [hcast_def](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/hcast-def.md) | 140 | `result-track:02764a88a882e650ae4a0cad9830ed12bf7fc5c3ecb58c2f014287e2b5d578ac` |
| 10 | `theorem` | [heq_path_of_eq_image](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/heq-path-of-eq-image.md) | 150 | `result-track:f43328d692706c423c5ae6f43fd563f496fb136aa80bc45c5dd61a07cf0e32e5` |
| 11 | `theorem` | [start_path](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/start-path.md) | 156 | `result-track:341788bd6821e5d2e28b4b529d65e5e3ab89d077f899beaabafac4c73855f64d` |
| 12 | `theorem` | [end_path](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/end-path.md) | 159 | `result-track:25c2c1fed828bef5e0495ced3152b9022455ca07a300101acb6394ac94713dea` |
| 13 | `theorem` | [eq_path_of_eq_image](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/eq-path-of-eq-image.md) | 164 | `result-track:8600b50c4c46930871c5bde8311aa6f03e7ce3f0e23ddda7b5429da8a8a3659e` |
| 14 | `def` | [uliftMap](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/uliftmap.md) | 205 | `declaration-track:4f569c01326f885cf643dce157677a8042436993dbec6448a52092818cf682e4` |
| 15 | `theorem` | [ulift_apply](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/ulift-apply.md) | 209 | `result-track:1caf95af8ad199ae74702100238f4e5a3c91e78d54a2605551a7049982680d8e` |
| 16 | `abbrev` | [prodToProdTopI](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/prodtoprodtopi.md) | 214 | `declaration-track:75608edffd5c0d779770fa6b0857ac2915c571d609dcbb3e09c4e1abc277c2f3` |
| 17 | `def` | [diagonalPath](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/diagonalpath.md) | 219 | `declaration-track:0925bb6faa1a8da24c9ee5fe7d9663d6658d0fa51667ca517aa861f879875e6b` |
| 18 | `def` | [diagonalPath'](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/diagonalpath-source-edition-2.md) | 223 | `declaration-track:f2db48ec79f4ffc5ab1d2e007c26632de774c3597c7d519cd7cc4c600e84b5a7` |
| 19 | `theorem` | [apply_zero_path](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/apply-zero-path.md) | 227 | `result-track:d69f51a148b5112ce90c860a43129289c2b2b8d0dc7bec17dc96b3a219752ee0` |
| 20 | `theorem` | [apply_one_path](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/apply-one-path.md) | 238 | `result-track:bd1297b40891dbc7bbcd7bd6cf180eeefc5c0ad3e5b77b1e3459a6e082cd6ca8` |
| 21 | `theorem` | [evalAt_eq](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/evalat-eq.md) | 250 | `result-track:ded1aa8bd157123ca7d053df21fec5accd53d9f93134de33b60492ecbc2ab70e` |
| 22 | `theorem` | [eq_diag_path](../../../../AlgebraicTopology/InducedMapsPublic.lean/declarations/eq-diag-path.md) | 261 | `result-track:d93c55a9a0c6dfadbaeca4834460bc2252ecac3c6ac31088df06156c4aef38d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5bf0ce25799003c395f492666d4ae46d0a727c75e17559b225786e147b00e74 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/InducedMaps/Variantb1dcd8354e9a68faba0db20fbeb8bcf5b1e629602ab4dfd544bbac6e33dc366d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

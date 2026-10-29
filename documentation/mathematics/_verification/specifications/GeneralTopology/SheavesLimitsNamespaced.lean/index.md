# Verification target: Sheaves Limits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecce50c310871cc28e11dd14bade33c646b25398",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante0e79ef5d9ec3990aad09f4c1516fa6c651862c4e56c1c93c78a25572bbffdfa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecce50c310871cc28e11dd14bade33c646b25398`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante0e79ef5d9ec3990aad09f4c1516fa6c651862c4e56c1c93c78a25572bbffdfa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante0e79ef5d9ec3990aad09f4c1516fa6c651862c4e56c1c93c78a25572bbffdfa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.Sheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/instance-source-edition-8.md) | 35 | `declaration-track:d255d33a76049ced9d18d2c3458a009a008e0cdd818331d76592a7136bcdf372` |
| 2 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/instance-source-edition-4.md) | 38 | `declaration-track:90c678a2dd81b1bd594f310cf49236d16987c70837dce70d24abe36789fbd8d9` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/instance-source-edition-3.md) | 40 | `declaration-track:8d5d8dd2af209635d5e695a0bd6e503d83889bdaeadfa946e609e19bbed1cde1` |
| 4 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/instance-source-edition-6.md) | 43 | `declaration-track:ad34692600f7d986ceeb8e92f107bd6ab54e7bce01b0336d04963d860c3414cd` |
| 5 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/instance-source-edition-5.md) | 45 | `declaration-track:99ba9a91a664af19da760d591f7a2321239bce90db68af705f1a402ded1bd23f` |
| 6 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/instance.md) | 48 | `declaration-track:062aa362fae160628a860f61cb35c00855b08c99ac8581321872af8a7b857290` |
| 7 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/instance-source-edition-7.md) | 51 | `declaration-track:b9b52ae63345350660f89aebad01d2de946331d20842261c428aadf39d5ab18b` |
| 8 | `instance` | [(anonymous)](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/instance-source-edition-2.md) | 53 | `declaration-track:639b0d7ac3404506f8ce3126120e0bf285bf9ecb1ef5b43c4a7581d5d18efa94` |
| 9 | `theorem` | [isSheaf_of_isLimit](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/issheaf-of-islimit.md) | 55 | `result-track:c9e910adb442f87291593e0d6f79f207e1dfe033bfd959fd6e6915f3f4434397` |
| 10 | `theorem` | [limit_isSheaf](../../../../GeneralTopology/SheavesLimitsNamespaced.lean/declarations/limit-issheaf.md) | 65 | `result-track:958b56dd930c2a5aa0ceba2fc27d880d911c5c7c40d4861ae0757aefc5ba5e90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e7a2b42a7589ad09706907a98894a44eab9d3a32cffc46739ff5f618439d7a9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante0e79ef5d9ec3990aad09f4c1516fa6c651862c4e56c1c93c78a25572bbffdfa.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variante0e79ef5d9ec3990aad09f4c1516fa6c651862c4e56c1c93c78a25572bbffdfa.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

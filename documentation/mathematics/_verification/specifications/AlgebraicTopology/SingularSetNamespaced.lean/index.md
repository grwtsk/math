# Verification target: Singular Set Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b54f2186522d5965d507091515783d640fb2b180",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SingularSet/Variant0a46a76b0b00d86fb800a23232b0d7e51c56769fdf2d54c5fc63eb2a6eb733a5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/SingularSetNamespaced.lean/index.md) · [Full source](../../../../AlgebraicTopology/SingularSetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b54f2186522d5965d507091515783d640fb2b180`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SingularSet/Variant0a46a76b0b00d86fb800a23232b0d7e51c56769fdf2d54c5fc63eb2a6eb733a5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SingularSet/Variant0a46a76b0b00d86fb800a23232b0d7e51c56769fdf2d54c5fc63eb2a6eb733a5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.TopologicalSimplex` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Presheaf` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [TopCat.toSSet](../../../../AlgebraicTopology/SingularSetNamespaced.lean/declarations/topcat-tosset.md) | 55 | `declaration-track:5633ca845c126fb5cf91f71b6880e8646df3959831d250b2c45a2b1def3ebf4a` |
| 2 | `def` | [SSet.toTop](../../../../AlgebraicTopology/SingularSetNamespaced.lean/declarations/sset-totop.md) | 62 | `declaration-track:8485471705321397399c6e361da965e16ef911588e5b5b117b8cad1b2e856d92` |
| 3 | `def` | [sSetTopAdj](../../../../AlgebraicTopology/SingularSetNamespaced.lean/declarations/ssettopadj.md) | 66 | `declaration-track:c020912ffc8df09c0770a646aa6985958ec5ef598ab36e2d52f60985ac9a1c9e` |
| 4 | `def` | [SSet.toTopSimplex](../../../../AlgebraicTopology/SingularSetNamespaced.lean/declarations/sset-totopsimplex.md) | 72 | `declaration-track:5900c55443e630fb6383f1bb1ab948deb6f37e7efb7bb27fb551e0b00253731f` |
| 5 | `def` | [TopCat.toSSetIsoConst](../../../../AlgebraicTopology/SingularSetNamespaced.lean/declarations/topcat-tossetisoconst.md) | 78 | `declaration-track:f4396565b6fd1fb86114afb4ea61b8fd4d8de7bdfda89fa0f0fdfe5a9e202b81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=638fe58be06fe2a644261f5a12418b656674ccbd4ffeb1432eb366852ea07dfa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/SingularSet/Variant0a46a76b0b00d86fb800a23232b0d7e51c56769fdf2d54c5fc63eb2a6eb733a5.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/SingularSet/Variant0a46a76b0b00d86fb800a23232b0d7e51c56769fdf2d54c5fc63eb2a6eb733a5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

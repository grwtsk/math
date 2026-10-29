# Verification target: GRWTSK.Algebra.GroupTheory.Archimedean.Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "819abcfc08c01bdb8c0335a7c4ba828e66dbba34",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean/index.md) · [Full source](../../../../../../Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `819abcfc08c01bdb8c0335a7c4ba828e66dbba34`.

Source path: `GRWTSK/Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Archimedean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.ZPowers.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Rat.denseRange_cast](../../../../../../Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean/declarations/rat-denserange-cast--c54e59e0e8a3b9162e550bca.md) | 37 | `result-track:c54e59e0e8a3b9162e550bca0b4d37b1f8cb1ad5daf24e66e7f802792a6644ae` |
| 2 | `theorem` | [dense_of_not_isolated_one](../../../../../../Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean/declarations/dense-of-not-isolated-one--611d61ff153ea76bccc97720.md) | 54 | `result-track:611d61ff153ea76bccc9772088ec1cdbc7c5ef0cab5f8aafaede45d61a767b1e` |
| 3 | `theorem` | [dense_of_no_min](../../../../../../Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean/declarations/dense-of-no-min--25dbcf950627c3ed4a1c38e4.md) | 73 | `result-track:25dbcf950627c3ed4a1c38e42b1a9acdc993787fe8e42875adf554c8c434bbf1` |
| 4 | `theorem` | [dense_or_cyclic](../../../../../../Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean/declarations/dense-or-cyclic--23c4b15a1bb34549a810daf7.md) | 84 | `result-track:23c4b15a1bb34549a810daf784a798d6814574a58208496b3730320d85ec5f9f` |
| 5 | `theorem` | [dense_xor'_cyclic](../../../../../../Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean/declarations/dense-xor-cyclic--ba681a745a3db525ab87d83d.md) | 102 | `result-track:ba681a745a3db525ab87d83d6f8ec129559f1a6ba9522011c063fc142941486a` |
| 6 | `theorem` | [dense_iff_ne_zpowers](../../../../../../Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean/declarations/dense-iff-ne-zpowers--1ede3236c91dbd3e3ee8ca7c.md) | 113 | `result-track:1ede3236c91dbd3e3ee8ca7cd3d0e68f40e2e5ce6f9b9ae243bd970bb0ae5e2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a828a0afca707ecce8143dcce31e30625e9899f581d1a71065f32ecb0170898 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Archimedean/Variantb90ab504e58391cc9aba7ff350eabdf9c496f0a15cf8caa6d01b885505f4f3a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

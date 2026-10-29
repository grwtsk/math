# Verification target: Arithmetic Lattice Glue

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "029d346cd2f8838e9c54b440ee2fcdb7648597be",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f476c75652f41726974686d657469634c617474696365476c75652e6c65616/Variant2af522edb5459a2d0809ac3d83013228f30d84f77aea82768f585d81ac689358.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ArithmeticLatticeGlue.lean/index.md) · [Full source](../../../../Combinatorics/ArithmeticLatticeGlue.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `029d346cd2f8838e9c54b440ee2fcdb7648597be`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f476c75652f41726974686d657469634c617474696365476c75652e6c65616/Variant2af522edb5459a2d0809ac3d83013228f30d84f77aea82768f585d81ac689358.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f476c75652f41726974686d657469634c617474696365476c75652e6c65616/Variant2af522edb5459a2d0809ac3d83013228f30d84f77aea82768f585d81ac689358.lean.json)

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
| 1 | `def` | [surfaceId](../../../../Combinatorics/ArithmeticLatticeGlue.lean/declarations/surfaceid.md) | 8 | `declaration-track:340911abd94bbc597a3d56003d60828655c7b7b967ddc1321f61d54613da6994` |
| 2 | `def` | [ownsDeclaredSurface](../../../../Combinatorics/ArithmeticLatticeGlue.lean/declarations/ownsdeclaredsurface.md) | 9 | `declaration-track:cdb2903c35b662bf5c685da1b0cc91cf34e83a85a4d2be8720f5714ff0081bcd` |
| 3 | `def` | [crossLeafReasoningRequiresGlue](../../../../Combinatorics/ArithmeticLatticeGlue.lean/declarations/crossleafreasoningrequiresglue.md) | 10 | `declaration-track:190b0bf347f99803caa462ec3293f7e8d7208ba80f12f8ab5c3d98661c46492e` |
| 4 | `theorem` | [surface_id_declared](../../../../Combinatorics/ArithmeticLatticeGlue.lean/declarations/surface-id-declared.md) | 12 | `result-track:49e206f50c6bfce1c5d98253583e01b2fec85ab15248f35033ab63850b7f2798` |
| 5 | `theorem` | [owns_declared_surface](../../../../Combinatorics/ArithmeticLatticeGlue.lean/declarations/owns-declared-surface.md) | 16 | `result-track:ffdd2f6f3e9851615eb2337ae8075df02f4e2d8308ab6fec3c806b4f0f285e75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddf29063f8a7c5708e477b4704b00086fb8532c1ce7032c28d792951472e2247 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f476c75652f41726974686d657469634c617474696365476c75652e6c65616/Variant2af522edb5459a2d0809ac3d83013228f30d84f77aea82768f585d81ac689358.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f476c75652f41726974686d657469634c617474696365476c75652e6c65616/Variant2af522edb5459a2d0809ac3d83013228f30d84f77aea82768f585d81ac689358.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Elliptic Curve Coordinate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc1a239c1aeb9bbd6cadd1353ba01aa8a611ddd0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f4c6174746963652f456c6c69707469634375727665436f6f7264696e61746/Variant3943bbb510013947d7bb59fac98f505e4a8e6db1259871973e6b43ba57fd1424.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/EllipticCurveCoordinate.lean/index.md) · [Full source](../../../../Combinatorics/EllipticCurveCoordinate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc1a239c1aeb9bbd6cadd1353ba01aa8a611ddd0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f4c6174746963652f456c6c69707469634375727665436f6f7264696e61746/Variant3943bbb510013947d7bb59fac98f505e4a8e6db1259871973e6b43ba57fd1424.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f4c6174746963652f456c6c69707469634375727665436f6f7264696e61746/Variant3943bbb510013947d7bb59fac98f505e4a8e6db1259871973e6b43ba57fd1424.lean.json)

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
| 1 | `def` | [surfaceId](../../../../Combinatorics/EllipticCurveCoordinate.lean/declarations/surfaceid.md) | 8 | `declaration-track:c0be1af8daa973946be952cae8eb07d55c8201d3702bb3a8f677f0af859be5ca` |
| 2 | `def` | [ownsDeclaredSurface](../../../../Combinatorics/EllipticCurveCoordinate.lean/declarations/ownsdeclaredsurface.md) | 9 | `declaration-track:0ffab6beb4e17483bbfa7bb095f29509b7af7d779e96596521ebabf146e18599` |
| 3 | `def` | [crossLeafReasoningRequiresGlue](../../../../Combinatorics/EllipticCurveCoordinate.lean/declarations/crossleafreasoningrequiresglue.md) | 10 | `declaration-track:400111092c2207252fa5324069d0bf3f9079c2c2464854f5e52d7ff396abbc7a` |
| 4 | `theorem` | [surface_id_declared](../../../../Combinatorics/EllipticCurveCoordinate.lean/declarations/surface-id-declared.md) | 12 | `result-track:44dac1013d04919541850322c6421c2ee4b794dad917b11487f0f022a095933b` |
| 5 | `theorem` | [owns_declared_surface](../../../../Combinatorics/EllipticCurveCoordinate.lean/declarations/owns-declared-surface.md) | 16 | `result-track:9aabdd480711db16dd7957ce863b3b92e97083f614c0bcb851c5d6bb64244ab2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe7667481b93a8e5b8abaa35b14cf2e9ba2fbc3bf7feedec824a30a0126644e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f4c6174746963652f456c6c69707469634375727665436f6f7264696e61746/Variant3943bbb510013947d7bb59fac98f505e4a8e6db1259871973e6b43ba57fd1424.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/M506970656c696e652f4c6174746963652f456c6c69707469634375727665436f6f7264696e61746/Variant3943bbb510013947d7bb59fac98f505e4a8e6db1259871973e6b43ba57fd1424.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

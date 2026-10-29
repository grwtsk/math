# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c227ee88cd3c6f4a389d42a43f2e30ca60a5c806",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/index.md) · [Full source](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c227ee88cd3c6f4a389d42a43f2e30ca60a5c806`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Action.End` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Hom.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulSemiringAction](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/declarations/mulsemiringaction--3c2933ba01ca7a0d9077697b.md) | 42 | `declaration-track:3c2933ba01ca7a0d9077697b7401bfb0bbeb1b6f5d385fa6c6221097eed7f782` |
| 2 | `instance` | [(anonymous)](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/declarations/instance--861d790da2a30ccc3c643b51.md) | 55 | `declaration-track:861d790da2a30ccc3c643b5111cf3022fb3f3e8c835bd7da2bd74c1a6caa0da0` |
| 3 | `def` | [MulSemiringAction.toRingHom](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/declarations/mulsemiringaction-toringhom--6f17a900fc59975865519797.md) | 62 | `declaration-track:6f17a900fc59975865519797e75b069920450133cf47f7e4f42cf8a96914345e` |
| 4 | `theorem` | [toRingHom_injective](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/declarations/toringhom-injective--b6bf6a6fd333d9996e7980eb.md) | 65 | `result-track:b6bf6a6fd333d9996e7980ebc42849d889d492e1cf6feb0705bf0154cdbcb027` |
| 5 | `instance` | [RingHom.applyMulSemiringAction](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/declarations/ringhom-applymulsemiringaction--4448dc68074ab9b775413c4a.md) | 72 | `declaration-track:4448dc68074ab9b775413c4a4a1626a6385f8eecd08354488837a5f9f01054e1` |
| 6 | `theorem` | [RingHom.smul_def](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/declarations/ringhom-smul-def--0ff6023cba7ff0809ace0556.md) | 82 | `result-track:0ff6023cba7ff0809ace05569b39ced1107b0f1214b6fed3d7ad4b0b0377475a` |
| 7 | `instance` | [RingHom.applyFaithfulSMul](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/declarations/ringhom-applyfaithfulsmul--a527a6d8618f28124d1afecf.md) | 86 | `declaration-track:a527a6d8618f28124d1afecfcfd52b4b4be216f1eb219ec712b0ea178c4d6bf0` |
| 8 | `abbrev` | [MulSemiringAction.compHom](../../../../../../Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean/declarations/mulsemiringaction-comphom--bcb98de8ad4e2295c663583e.md) | 95 | `declaration-track:bcb98de8ad4e2295c663583eb7445653e3f170bb7cfac957c7995481c1bc341f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e853d486799863b1acf914a6254fc720e4ecdcd3e4602f2b2e39de6901b184d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variante37d6666a328b2e0e909fab64fc87faa386eac49c892c21096c3b600a3999fed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

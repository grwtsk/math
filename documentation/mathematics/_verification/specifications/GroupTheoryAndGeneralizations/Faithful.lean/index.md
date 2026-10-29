# Verification target: Faithful

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bddd47f9956c2395359b5dedd0e6b172213dd818",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Faithful/Variantd410029405da72a827807bed75ff40fdcd6865c3e4a9bdb09e3098d3f57a1cad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/Faithful.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/Faithful.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bddd47f9956c2395359b5dedd0e6b172213dd818`.

Source path: `GRWTSK/Algebra/GroupTheory/Faithful/Variantd410029405da72a827807bed75ff40fdcd6865c3e4a9bdb09e3098d3f57a1cad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Faithful/Variantd410029405da72a827807bed75ff40fdcd6865c3e4a9bdb09e3098d3f57a1cad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FaithfulVAdd](../../../../GroupTheoryAndGeneralizations/Faithful.lean/declarations/faithfulvadd.md) | 37 | `declaration-track:9785164611c19c19bb8186b791dbc83fb2c51ce71f14a6ea589541f28dbd5953` |
| 2 | `class` | [FaithfulSMul](../../../../GroupTheoryAndGeneralizations/Faithful.lean/declarations/faithfulsmul.md) | 43 | `declaration-track:82f1b3a8f6989670ad63eeccee189247830d5a743f43ec5da092aaa4afcae1c7` |
| 3 | `lemma` | [smul_left_injective'](../../../../GroupTheoryAndGeneralizations/Faithful.lean/declarations/smul-left-injective.md) | 51 | `result-track:1bef739bb8bafc4ef58cb5d7e775d96f567ddb15b3c0594edb533e9cae71cba5` |
| 4 | `instance` | [RightCancelMonoid.faithfulSMul](../../../../GroupTheoryAndGeneralizations/Faithful.lean/declarations/rightcancelmonoid-faithfulsmul.md) | 56 | `declaration-track:49d1d7567fd9e04f52797823425991b3061add9339fe7f130b52db36e465cbba` |
| 5 | `instance` | [LefttCancelMonoid.to_faithfulSMul_mulOpposite](../../../../GroupTheoryAndGeneralizations/Faithful.lean/declarations/lefttcancelmonoid-to-faithfulsmul-mulopposite.md) | 61 | `declaration-track:3a95dc7fc5467ddbdf817ef7741d3e050d3d9b2372d2ee4ecef4010e17a42a02` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/Faithful.lean/declarations/instance.md) | 64 | `declaration-track:34f3ff3aeed8af88574b919bb8d68f044130f2e8c11dcb2da51ce4fdd05dea7f` |
| 7 | `lemma` | [faithfulSMul_iff_injective_smul_one](../../../../GroupTheoryAndGeneralizations/Faithful.lean/declarations/faithfulsmul-iff-injective-smul-one.md) | 66 | `result-track:cd6bce3df700a54e492d0b41a42b42da5982cc55a0a60523970377a579f1a00d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e769c67b82d4b682b2f0d771bb1fef5d304b5c8ea97a8960d098ac702799c6c0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Faithful/Variantd410029405da72a827807bed75ff40fdcd6865c3e4a9bdb09e3098d3f57a1cad.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Faithful/Variantd410029405da72a827807bed75ff40fdcd6865c3e4a9bdb09e3098d3f57a1cad.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

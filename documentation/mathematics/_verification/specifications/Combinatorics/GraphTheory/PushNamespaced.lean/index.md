# Verification target: Push Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b6192b26fe08f1af2ccd6af5c232d3bd5eb64ade",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant8444a826e1d3658975cec768342be93ce4f27a8e86dce83369359210e5d5d432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b6192b26fe08f1af2ccd6af5c232d3bd5eb64ade`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant8444a826e1d3658975cec768342be93ce4f27a8e86dce83369359210e5d5d432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant8444a826e1d3658975cec768342be93ce4f27a8e86dce83369359210e5d5d432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Prefunctor` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Push](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/push.md) | 33 | `declaration-track:2784d20f9af3c3b4ad8d26f507c68a3512ab9d06cdf073ac63ce07d3581a677f` |
| 2 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:ca5fc74209267348da41cb31caba4a5149d0166ce4eae15e1b96eac53d21581e` |
| 3 | `inductive` | [PushQuiver](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/pushquiver.md) | 40 | `declaration-track:372d51d36ff471ff60f7f7f42ac778c8651b6cc7061783c1c28a1c870e6d12bf` |
| 4 | `instance` | [(anonymous)](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/instance.md) | 43 | `declaration-track:0c57f39324a37433924d2c3e57c503c0048e7819b9a633e8dbbb9dd478fd2e73` |
| 5 | `def` | [of](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/of.md) | 49 | `declaration-track:e87b4d179f58209c046d6bd6e0580329590fe77290265ff8c638052c80a03601` |
| 6 | `theorem` | [of_obj](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/of-obj.md) | 54 | `result-track:3a723dcc7dd452edf901007d5a49e6f989ebc525723be1315ea60132afc8cdba` |
| 7 | `def` | [lift](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/lift.md) | 62 | `declaration-track:54a5cdd82cd0f8b82035bb8fb2c22ab720c9edb606a46472f43672e08a7edf7e` |
| 8 | `theorem` | [lift_obj](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/lift-obj.md) | 70 | `result-track:641e57933774399535d3371eaa855b895ad3c5b4d064ee986b775aa61a57f612` |
| 9 | `theorem` | [lift_comp](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/lift-comp.md) | 73 | `result-track:64125bb2887a24d85ca5e2bea3e6d0c6a19ad95860d49a9a5114729c54931476` |
| 10 | `theorem` | [lift_unique](../../../../../Combinatorics/GraphTheory/PushNamespaced.lean/declarations/lift-unique.md) | 91 | `result-track:c30f67769c25e8a06220ec15732f03d7766e5a30b73b835237ff44d9cf3368ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4861fb27c05998dee916c3ab8bfa503781774546bd524dd08ce58081a9d1b7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant8444a826e1d3658975cec768342be93ce4f27a8e86dce83369359210e5d5d432.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Push/Variant8444a826e1d3658975cec768342be93ce4f27a8e86dce83369359210e5d5d432.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

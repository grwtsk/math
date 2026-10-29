# Verification target: Option Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "122f6a1e6afb372810c79fcecb15cfdf0b5c608b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Option/Variant7f3e5516b327be23471c3bac7a9bfdafc66ff18ecb42e9810baebbb4994f1525.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `122f6a1e6afb372810c79fcecb15cfdf0b5c608b`.

Source path: `GRWTSK/Algebra/GroupTheory/Option/Variant7f3e5516b327be23471c3bac7a9bfdafc66ff18ecb42e9810baebbb4994f1525.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Option/Variant7f3e5516b327be23471c3bac7a9bfdafc66ff18ecb42e9810baebbb4994f1525.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 44 | `declaration-track:7cbe27bf929623ab56ea72fb6b249ec92c27172ebcfb0023b52147abe9299a3e` |
| 2 | `theorem` | [smul_def](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/smul-def.md) | 48 | `result-track:852ac71f4a717367a6dd837621a54427f0b1a583451bb441c4dc5ce543c7418a` |
| 3 | `theorem` | [smul_none](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/smul-none.md) | 52 | `result-track:ac84bfdc6358e4e0fde1951507ad3ed45b183f7480c5512d160b88ee3c695577` |
| 4 | `theorem` | [smul_some](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/smul-some.md) | 56 | `result-track:5dd65d057805c8e86dfa0ce77460053e70577afac52adae09b81309f823fd8c4` |
| 5 | `instance` | [instIsScalarTowerOfSMul](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/instisscalartowerofsmul.md) | 60 | `declaration-track:e9baa89376c82bc855bee31bef10e2045b5995923b87625e22304f0e3506c9b1` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 66 | `declaration-track:baf656cf90e3ac2a7b99ea4fbf885bf40e2bf03ed2ff5bddea2c662f7de8d835` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/instance.md) | 70 | `declaration-track:0dc7c2cc1ba390968e81cfccc6360f09259b5912cca0285d1ec521e1456e1cb3` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 76 | `declaration-track:d4f5fa72b493d75b8700f9c347d91da6d7e05b58b1ea27e4a5d0bf8a38357e1b` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/OptionNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 81 | `declaration-track:15bc3675e378a3dd6b21e10d42eb25e8c34cfd67b15dad1bc86ae947565a4849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c808319ad1a248da30102fc9bdef17a8210aeb1b5d0f26d9282076947407840c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Option/Variant7f3e5516b327be23471c3bac7a9bfdafc66ff18ecb42e9810baebbb4994f1525.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Option/Variant7f3e5516b327be23471c3bac7a9bfdafc66ff18ecb42e9810baebbb4994f1525.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

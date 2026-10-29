# Verification target: Cusp Form Submodule Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77754e63c0c24a90f2de6fd7294bf77059119b4b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/CuspFormSubmodulePublic.lean/index.md) · [Full source](../../../../NumberTheory/CuspFormSubmodulePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77754e63c0c24a90f2de6fd7294bf77059119b4b`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean.json)

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
| 1 | `def` | [toModularFormₗ](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/tomodularform.md) | 52 | `declaration-track:57c98b5af314c4997d07d3c8bd3531f3e66feb84f018110084e556dee38ce479` |
| 2 | `lemma` | [toModularFormₗ_apply](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/tomodularform-apply.md) | 58 | `result-track:3a2938e9fb23aa48c890c38fed8e620e2d21976d9d1196224c4eeb42f8c1070c` |
| 3 | `lemma` | [toModularFormₗ_eq_coe](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/tomodularform-eq-coe.md) | 61 | `result-track:c6fb5813c7ba8fe732ddd9a447c64aae84efe0283a26ac153813906f57118f14` |
| 4 | `lemma` | [toModularFormₗ_injective](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/tomodularform-injective.md) | 64 | `result-track:33f60bb6558adf3e6a2226b9cecae2171e9c777cbb86430bb66437aa5d5a70c9` |
| 5 | `def` | [cuspFormSubmodule](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/cuspformsubmodule.md) | 74 | `declaration-track:c64afb2f05241fe9479ac936f14108bfc3641a64389cd580ad3b35097e4cf895` |
| 6 | `def` | [IsCuspForm](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/iscuspform.md) | 79 | `declaration-track:b5918566c7e55c0d4436bed292667f9f0beafa00d1e34b6d471cfa55d0342235` |
| 7 | `lemma` | [mem_cuspFormSubmodule_iff](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/mem-cuspformsubmodule-iff.md) | 83 | `result-track:49315b87ccffe5aa075ba2c55f8104fdee4747f0536940159dfbf9a8899902f3` |
| 8 | `def` | [CuspForm.equivCuspFormSubmodule](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/cuspform-equivcuspformsubmodule.md) | 87 | `declaration-track:871d307f62c3344fc8e01c28d6c6c8056c8744ed71630e7b3293c06132fd9012` |
| 9 | `lemma` | [CuspForm.isCuspForm_toModularFormₗ](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/cuspform-iscuspform-tomodularform.md) | 92 | `result-track:e2b0371cab7f4edada19fc4d2b94b03ccb43c8dfd0a90665acac310bba2a4d83` |
| 10 | `lemma` | [isCuspForm_iff](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/iscuspform-iff.md) | 98 | `result-track:f4e19c5851a48d21ce8187cc2b6bd5bfc77d9491a019124dd76db1645853ac00` |
| 11 | `lemma` | [isZeroAtImInfty_of_valueAtInfty_eq_zero](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/iszeroatiminfty-of-valueatinfty-eq-zero.md) | 103 | `result-track:98e46f1566230365d7369cb8ede8935350d5346d4e08788e81712ebf529bafdf` |
| 12 | `lemma` | [isZeroAt_of_coeffZero_eq_zero](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/iszeroat-of-coeffzero-eq-zero.md) | 119 | `result-track:b6f72c3cd866336462b5e6f1f7b134422c4992d9b0eff99e343e788587832742` |
| 13 | `def` | [toCuspForm](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/tocuspform.md) | 133 | `declaration-track:2eeeeaeb69a298bc2f50897557532c20946934b1f6596faaaef384dfb92274ab` |
| 14 | `lemma` | [toCuspForm_apply](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/tocuspform-apply.md) | 137 | `result-track:5064f21006b6b767261e78cb23f237193f5d06f6c43fa68204ecddeebd17df5b` |
| 15 | `lemma` | [isCuspForm_iff_coeffZero_eq_zero](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/iscuspform-iff-coeffzero-eq-zero.md) | 142 | `result-track:20d6c82a02f4ea9acbbfd62de28e1ea00866fe1f7c4cda89c80e7837b44c56d3` |
| 16 | `lemma` | [sub_smul_isCuspForm](../../../../NumberTheory/CuspFormSubmodulePublic.lean/declarations/sub-smul-iscuspform.md) | 152 | `result-track:1b0d2f808b8ccb305d847e26190f739a130d74bd586de99cdf4e8ed6abe8ba79` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d32933df48bcf774ac0878d38d98c3f6b76ce4aa9200f797f085ff7f7d2257a3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean","GRWTSK/_verification/specifications/NumberTheory/AutomorphicForms/ModularForms/CuspFormSubmodule/Variante8e67b77b9386a09c00f6ed38a5e2330992e0b55e20e9d3e4a18321f16f000a6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

# Verification target: Character Module

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea00edf9b07353d29887e9528def7d564dff4d4f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea00edf9b07353d29887e9528def7d564dff4d4f`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Grp.Injective` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.AddCircle` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Isomorphisms` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CharacterModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/charactermodule.md) | 43 | `declaration-track:4816a001114aec0b817373440a1703ffc1da5e1fb186f85658215548323f29e7` |
| 2 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/instance-source-edition-3.md) | 47 | `declaration-track:84501356120f17ff41ff97dfb5ae88b382b75ccf75c17e13d206a8e2fd22c494` |
| 3 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/instance-source-edition-2.md) | 51 | `declaration-track:30dd6bc83590f7915694c9951db193865a736bbfec70fd016a031e1c133d9b98` |
| 4 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/instance-source-edition-4.md) | 55 | `declaration-track:b306848e3b5f3a5319a68b0e532e4c9ff9bb30c2b2ca4c7977bb5074e4460614` |
| 5 | `theorem` | [ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/ext.md) | 58 | `result-track:9ea0d4d5ebbcfa2e71867d9bfbc14ce440222e262c635ec31548e4e798891881` |
| 6 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/instance.md) | 64 | `declaration-track:012819355278f8a94b16b64faed00c369e018e7fab02347245fa310a0bc9dfa8` |
| 7 | `lemma` | [smul_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/smul-apply.md) | 69 | `result-track:74c13f266d329f318d47d0e280be3d0279821146b19ebf1e6e0b1e78ba06db95` |
| 8 | `def` | [dual](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual.md) | 75 | `declaration-track:86470867f7c766dbb1cb5deede192b383f18e78d90a7900541e2dfdf31160212` |
| 9 | `lemma` | [dual_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual-zero.md) | 81 | `result-track:5a49f2c0b55098c68ddbe0e1cdcd1252c593694add858c7962587744856444fd` |
| 10 | `lemma` | [dual_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual-comp.md) | 85 | `result-track:b874c3433466ffc242680444499e4ca27476bc8e36e7bb1d89b32bce0ff75117` |
| 11 | `lemma` | [dual_injective_of_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual-injective-of-surjective.md) | 90 | `result-track:66b9599283504d7cefebe5f6e5d563c9fc6e71dadb758906247ec04f4cedd732` |
| 12 | `lemma` | [dual_surjective_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual-surjective-of-injective.md) | 98 | `result-track:ba1bea8e00f3e28b348cb797d8a1f860d1533b436305bea607cf5f2b81c24355` |
| 13 | `def` | [congr](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/congr.md) | 105 | `declaration-track:f2c53ea4719eda1f74c8b87cb456280d58d26d38a6861f178bedcc61611ee6e8` |
| 14 | `def` | [uncurry](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/uncurry.md) | 115 | `declaration-track:436a03fae3b17bc66a5a947f691edda55141e6e1126b91675d6abd8517680052` |
| 15 | `def` | [curry](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/curry.md) | 125 | `declaration-track:c7901ba51894cccf115f4f80433c326b3f738a402249d95082b462b6ca890af1` |
| 16 | `def` | [homEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/homequiv.md) | 138 | `declaration-track:c71d9f76dd1e3e95de05bff7da9c61b23a10b664ed1fc2573c6cef3dbe788fea` |
| 17 | `theorem` | [dual_rTensor_conj_homEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual-rtensor-conj-homequiv.md) | 142 | `result-track:ad613a0f8153b9d68c73077010182c7cd3f0f442ab783499498f3c046755e6f5` |
| 18 | `abbrev` | [int](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/int.md) | 150 | `declaration-track:8966e8e903538c03527eb7f2cc47ba4f2491a14a341fbe2dd93ae708435209bd` |
| 19 | `abbrev` | [int.divByNat](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/int-divbynat.md) | 153 | `declaration-track:1f5863cbeb06a57b56f17675b743d81f1be45c73511357abc3d1835d8e74d6e8` |
| 20 | `lemma` | [int.divByNat_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/int-divbynat-self.md) | 156 | `result-track:a2ec0177666fa03a65286eef94745c15937341f63b45b13a936591dc51ee6988` |
| 21 | `def` | [intSpanEquivQuotAddOrderOf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/intspanequivquotaddorderof.md) | 167 | `declaration-track:84e7ff867abb8b0661f415a0d7a77a15d0e6a3846564e55d6cd7611dfbaceb91` |
| 22 | `lemma` | [intSpanEquivQuotAddOrderOf_apply_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/intspanequivquotaddorderof-apply-self.md) | 176 | `result-track:c18613df5337ea82b39b6ae312cdbaa1a87942e096221070c97eea03c1c2a71d` |
| 23 | `def` | [ofSpanSingleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/ofspansingleton.md) | 186 | `declaration-track:0c565fb72e083fc8cc84e6c5abadb470f3003ba451b266ca3864584e0a707814` |
| 24 | `lemma` | [eq_zero_of_ofSpanSingleton_apply_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/eq-zero-of-ofspansingleton-apply-self.md) | 196 | `result-track:86ae6de2d770f0b310de03dba916c0dc9e137ad2b1762df17b6b38ea3a1d0bfa` |
| 25 | `lemma` | [exists_character_apply_ne_zero_of_ne_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/exists-character-apply-ne-zero-of-ne-zero.md) | 212 | `result-track:856a0d0d209248c08d182d61afd91f755fdfd716d2cbeac1236e897ef5b61caa` |
| 26 | `lemma` | [eq_zero_of_character_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/eq-zero-of-character-apply.md) | 217 | `result-track:d4c08245752c45dfac204fea1a122391af810895236474b47766e8f2a2b1a416` |
| 27 | `lemma` | [dual_surjective_iff_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual-surjective-iff-injective.md) | 222 | `result-track:641ffb492679733f0cb57cd3bc057b8484d54171bf34436ef4d715c3cd2c024b` |
| 28 | `theorem` | [_root_.rTensor_injective_iff_lcomp_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/root-rtensor-injective-iff-lcomp-surjective.md) | 228 | `result-track:2a2ac6a6399fcac4ff64129027bd42a15be6fc8a29f8d0adb0b993670293c686` |
| 29 | `lemma` | [surjective_of_dual_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/surjective-of-dual-injective.md) | 232 | `result-track:572e4d514de7a59f0e12296056625124e7d120b4661de6c2552b9e0e476d9ef0` |
| 30 | `lemma` | [dual_injective_iff_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual-injective-iff-surjective.md) | 242 | `result-track:f98b097ead4e6fc20918529380e13db2999f111215be370a0e119f78e428e8bb` |
| 31 | `lemma` | [dual_bijective_iff_bijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/CharacterModule.lean/declarations/dual-bijective-iff-bijective.md) | 246 | `result-track:fc35b494a0f53c7dec6e2d4b9ef097c09bc422ef40cf47c11b93a4d401e2eaa1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=328ce619d5b16d6b8475d28a7e71f013bf2df9d30cd4766fade9facccc88f6e5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CharacterModule/Variant4a2b3c6bddd4cf88649420d0b054ff6ed5cb711125e4942505ab8d6c247fe9ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

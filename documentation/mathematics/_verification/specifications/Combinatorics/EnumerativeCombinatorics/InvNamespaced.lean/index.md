# Verification target: Inv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "745ec92e0c130b7477a850e0110f212ddc13910f",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variant3943ea71687d2cc920f83e5bcc89e1fd8186f6e87fa17702154b482932928ca5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `745ec92e0c130b7477a850e0110f212ddc13910f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variant3943ea71687d2cc920f83e5bcc89e1fd8186f6e87fa17702154b482932928ca5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Inv/Variant3943ea71687d2cc920f83e5bcc89e1fd8186f6e87fa17702154b482932928ca5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Defs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invOfMemRange](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/invofmemrange.md) | 55 | `declaration-track:7ffd21a5912c275e8140fd2bd1d3b710d21efd14d5c52a5e513e520cd8146f47` |
| 2 | `theorem` | [left_inv_of_invOfMemRange](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/left-inv-of-invofmemrange-source-edition-2.md) | 59 | `result-track:9959fa5f57d3f29c0d378300a2075a4ab44d41d645f46456efa30538baf4a52f` |
| 3 | `theorem` | [right_inv_of_invOfMemRange](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/right-inv-of-invofmemrange.md) | 63 | `result-track:27b04ee547e2e536e82a6234fdf9fe2d04519fd4b616ad9137bce7efa922065f` |
| 4 | `theorem` | [invFun_restrict](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/invfun-restrict.md) | 66 | `result-track:115d5f177422b869f8f1c082d0b72daf20fa1c188da2c5315404c4e26e899060` |
| 5 | `theorem` | [invOfMemRange_surjective](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/invofmemrange-surjective.md) | 71 | `result-track:104870d705ff06b63737ad3e298800ad915b007400c7c8e5de46d23573d0dbaa` |
| 6 | `def` | [invOfMemRange](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/invofmemrange-source-edition-2.md) | 88 | `declaration-track:9c049f6ef071a509a262ecad09e81fbbee8ee3759a06f37611ae439502c4dd6b` |
| 7 | `theorem` | [left_inv_of_invOfMemRange](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/left-inv-of-invofmemrange.md) | 92 | `result-track:30d4b9ae920e72e0787ec69e1ef4cc0ac883c60962cc98c56af4a776f6561362` |
| 8 | `theorem` | [right_inv_of_invOfMemRange](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/right-inv-of-invofmemrange-source-edition-2.md) | 96 | `result-track:6fe728f8542cb72bad48c3abb58e7516dad4bcab6546f9a05ee98eb743cd9205` |
| 9 | `theorem` | [invFun_restrict](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/invfun-restrict-source-edition-2.md) | 99 | `result-track:8be24ada0729c667ad9a3e12056fe53b5f1d91a372316c5186b22455e883f7f0` |
| 10 | `theorem` | [invOfMemRange_surjective](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/invofmemrange-surjective-source-edition-2.md) | 104 | `result-track:ce6358ca57d02a9adde2a63be18f5b615432e2e24a238bfa48a9e05e49bc7dfa` |
| 11 | `def` | [chooseX](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/choosex.md) | 125 | `declaration-track:775c4f045630bb310d1b16b4d05f05460789a44a2e15bc0a3259159fd6606e99` |
| 12 | `def` | [choose](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/choose.md) | 130 | `declaration-track:34354b64126b810ba4e300a5b94a163b3abb866eb6459697c507aa5062225564` |
| 13 | `theorem` | [choose_spec](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/choose-spec.md) | 133 | `result-track:4ceb9fe465d92373a64bdc4305d86ab41d4f751071fc0d8987db7cdb21e5e801` |
| 14 | `theorem` | [choose_subtype_eq](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/choose-subtype-eq.md) | 136 | `result-track:125e1baa61531c78aff2e84cb96641427583f61a2932086fa34cea7e24cac007` |
| 15 | `def` | [bijInv](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/bijinv.md) | 153 | `declaration-track:700024b39db2b041406a4dc3b9e7df22cd4b5f651c7b16f61801db33373c8974` |
| 16 | `theorem` | [leftInverse_bijInv](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/leftinverse-bijinv.md) | 156 | `result-track:3bd67e6deb854daa1c1c9756a7ff1981540afaedf908fca8ffce8c153b16838f` |
| 17 | `theorem` | [rightInverse_bijInv](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/rightinverse-bijinv.md) | 159 | `result-track:23c3058c7270988d34d81fbaa52a0ba3ee5c771b68a71faaa453acb4dd44eb0a` |
| 18 | `theorem` | [bijective_bijInv](../../../../../Combinatorics/EnumerativeCombinatorics/InvNamespaced.lean/declarations/bijective-bijinv.md) | 162 | `result-track:812ed0624527ca6b082687ba6e8cf8aaf72514798ce1c68a427141bd2d6199fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc11ca720ed238bad8e500077df8fd5e6eb2634ed6e6f7a91c4a4ae5b4fabc00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Inv/Variant3943ea71687d2cc920f83e5bcc89e1fd8186f6e87fa17702154b482932928ca5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Inv/Variant3943ea71687d2cc920f83e5bcc89e1fd8186f6e87fa17702154b482932928ca5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

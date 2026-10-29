# Verification target: Lists Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71100b3dffd786f33f07aebb556eb9077ba86110",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e7011dcd022bbae66fe57b71c38cbbb47f7ab07da405d7792d884357e47d53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71100b3dffd786f33f07aebb556eb9077ba86110`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e7011dcd022bbae66fe57b71c38cbbb47f7ab07da405d7792d884357e47d53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e7011dcd022bbae66fe57b71c38cbbb47f7ab07da405d7792d884357e47d53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Sigma.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Nat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Lists'.](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/lists.md) | 58 | `declaration-track:c603bbf48216bbb3ebf2a0382ba7fd52268215934432cff09645a0ee53a42aaa` |
| 2 | `def` | [Lists](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/lists-source-edition-2.md) | 68 | `declaration-track:cd571510da533da06a67fca478753457ba3c612c7d2e1d5e2e661ea74a965e57` |
| 3 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-7.md) | 73 | `declaration-track:a53ca6a3725f5976f82917e4126a76764878603a875a1049ba61846d20f4fc80` |
| 4 | `def` | [cons](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/cons.md) | 78 | `declaration-track:cd520c16ed301644b6c9f69b47c183d259b1c1871ea1c2bbd7c269d39ba052cf` |
| 5 | `def` | [toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/tolist-source-edition-2.md) | 83 | `declaration-track:495297ad5d60e22fa55f19bf0878446813d893a01b574b2c59a69c201f4814e5` |
| 6 | `theorem` | [toList_cons](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/tolist-cons.md) | 89 | `result-track:681344badbc3952044aab83a9ba8a1616f58e984f7fdebf28d10ffc076e76563` |
| 7 | `def` | [ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/oflist-source-edition-2.md) | 93 | `declaration-track:7239e09b9712879306e90bb40b9ac8686db3a4e05874baa9d3adc365082a6666` |
| 8 | `theorem` | [to_ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/to-oflist.md) | 98 | `result-track:28dcd737e81f1dba9b8afee90088e0e565bb5499c5c619fcbc8a742f6454594c` |
| 9 | `theorem` | [of_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/of-tolist-source-edition-2.md) | 101 | `result-track:e2aee6da818b4d1ee489b170c49c9125dabd453ea0be855326d0bf27c98d4cfe` |
| 10 | `inductive` | [Lists.Equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/lists-equiv.md) | 117 | `declaration-track:bb43bda3292d10391dcad7f35bfcbeeb00fd2fe750f65df1f7ab08df147c42de` |
| 11 | `inductive` | [Lists'.Subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/lists-subset.md) | 123 | `declaration-track:dd26ee1e3e68ed0fb3c79c86470da1239376bd5474a4b3458b4bd4317c55f1f1` |
| 12 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-3.md) | 134 | `declaration-track:26b586796742f252f0b2a45cffa4f3ebd3eabef6b15a0130b983bc7a9c619fd0` |
| 13 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-10.md) | 139 | `declaration-track:ea2e82190b9e86821a227b492608ca20b2fdc29a243be3b83549ca017cdc39ce` |
| 14 | `theorem` | [mem_def](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/mem-def.md) | 142 | `result-track:d9ae07081e7ea119be8a85d27f04773edf13a68977b4062c34b61e7c37552f67` |
| 15 | `theorem` | [mem_cons](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/mem-cons.md) | 146 | `result-track:ff0c662c21bf9c5d4a88c2cb2130672e766f134fde205b378916597c8b64c723` |
| 16 | `theorem` | [cons_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/cons-subset.md) | 149 | `result-track:b738efa85398d18d04c60d09a395077235c6f3868d11ab93af04b11be72657db` |
| 17 | `theorem` | [ofList_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/oflist-subset.md) | 157 | `result-track:b348d70ddcb6c791e1d7a7080a7133a943e3d5f49e5983fe8a3150a2d247d4d4` |
| 18 | `theorem` | [Subset.refl](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/subset-refl.md) | 166 | `result-track:577fb676ead9cdfce7aa0be880ca679d8370d0561dfc634231c1f8746dc4b386` |
| 19 | `theorem` | [subset_nil](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/subset-nil.md) | 169 | `result-track:154bb3debafe555e3e3af1ec31a407a8ea122817cf0b334aeb12a61d65531a53` |
| 20 | `theorem` | [mem_of_subset'](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/mem-of-subset-source-edition-2.md) | 175 | `result-track:15aea1111bcbe4e94d4c2ad31276d254e1878c643a2acf991bc56b4a48902363` |
| 21 | `theorem` | [subset_def](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/subset-def.md) | 184 | `result-track:e4700908d5c7c57b83654ac80bf05fcef72036b07fddd182b1f90cefe851fa0b` |
| 22 | `def` | [atom](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/atom.md) | 198 | `declaration-track:dc4eb6f7fa02cf50d49a641cb3f93c6d8fa16dab7ca8ad8e89aa813cf63c879b` |
| 23 | `def` | [of'](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/of.md) | 203 | `declaration-track:72641e19896f1be34ce5370281b20fd383848abefdde356df437a4bccb070925` |
| 24 | `def` | [toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/tolist.md) | 208 | `declaration-track:4542c840edc8f0dd29194d9c39b06b590f5e37a656813959b6fbf57806bca512` |
| 25 | `def` | [IsList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/islist.md) | 212 | `declaration-track:816d6350428f5706e7d5801616a1d4812fd0609c3fa3eb4aaea35986d136f08d` |
| 26 | `def` | [ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/oflist.md) | 216 | `declaration-track:65c37259be1134c0f4d5e14e2574d76753792eef0c16aa62e2dee40a689409f4` |
| 27 | `theorem` | [isList_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/islist-tolist.md) | 219 | `result-track:db448fd5c1bf99894b8fc19ea2677b42b01e1f6ebb0c7e0c5607ca87195cf45c` |
| 28 | `theorem` | [to_ofList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/to-oflist-source-edition-2.md) | 222 | `result-track:4ff11b678d809faa43db8ac3f5b4ae7c663610126ea0b0a5a6cf8ea0a5664989` |
| 29 | `theorem` | [of_toList](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/of-tolist.md) | 224 | `result-track:6ffd972f15e48a5479a6c7d91a9197ee02220fd999534e84adbf0b31005a818a` |
| 30 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-8.md) | 227 | `declaration-track:ac67e96201ef794dd3e22aee71e047f4767d61b618aec5d5c5886138e8342fcd` |
| 31 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance.md) | 230 | `declaration-track:1e9653efcb4dafcd1310d131fbfbcbcd5cd1182d125d7db53d86f5f15c43652d` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-5.md) | 232 | `declaration-track:70fa68f8ab5e97db6daef2d45525c96fcb4a6c0fc240359103a409a29a90c1f6` |
| 33 | `def` | [inductionMut](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/inductionmut.md) | 235 | `declaration-track:b7292e27646e42272fbc1f7ff92a939434c511525057fd7687cc9e89394a8c7a` |
| 34 | `def` | [mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/mem.md) | 256 | `declaration-track:e03e3c709597bd73f305d372981a78a244043dba176b782fdcaf5dc50a27bdb5` |
| 35 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-2.md) | 260 | `declaration-track:25e76d77f8cdd10aea0bc5ae8b7f126b1b9973f75dd6dcff7439937c199752d5` |
| 36 | `theorem` | [isList_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/islist-of-mem.md) | 263 | `result-track:8da65d770b496f7e3eedc0dbc4a21c7c1d5ee969a38013b75a687c9b2ac88801` |
| 37 | `theorem` | [Equiv.antisymm_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/equiv-antisymm-iff.md) | 267 | `result-track:9d237bfc19e5d37375c29ca721b0707dcae196c8625b0f77ae3cf018cec2a1ac` |
| 38 | `theorem` | [equiv_atom](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/equiv-atom.md) | 275 | `result-track:10088fd4e64d64342497bcd2134e9227f81697d78723882b7123c1a866c5c19c` |
| 39 | `theorem` | [Equiv.symm](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/equiv-symm.md) | 279 | `result-track:2e9b23fb1be5c28f120101f36bb5fbe928cca475e96735f26a3ef99d968708d9` |
| 40 | `theorem` | [Equiv.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/equiv-trans.md) | 282 | `result-track:fee3920ad43d18ada037ab4896eb592d5f663c9622170677eb5e8b223574cc0e` |
| 41 | `instance` | [instSetoidLists](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instsetoidlists.md) | 308 | `declaration-track:5e6ca9deaa7caaac908690ae1431a6c09f7822bb2dff6d2b752cb16e3197f43c` |
| 42 | `theorem` | [sizeof_pos](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/sizeof-pos.md) | 313 | `result-track:9a7f280d47e20500f2355d07b09dcd4e600df2ddede3c55d62f9ede6a761cfd3` |
| 43 | `theorem` | [lt_sizeof_cons'](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/lt-sizeof-cons.md) | 317 | `result-track:6334c73c83bc723f4613ad6ad0d1e834c29e15e1d4de166a71432f4f1a1c916a` |
| 44 | `instance` | [Equiv.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/equiv-decidable.md) | 325 | `declaration-track:5a00878a1c677282f153b5151261e8586ff7ea031facc33f17b6d3a735289c1d` |
| 45 | `instance` | [Subset.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/subset-decidable.md) | 347 | `declaration-track:e0e9ffe229ffcb50eaa50b07bb5fdfa6ac43fcc44e3a7b95800bdd36de43f545` |
| 46 | `instance` | [mem.decidable](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/mem-decidable.md) | 360 | `declaration-track:31c9a661893477401cf02b69fcf3ded83314e421d7aaadb79e82099dab1182c3` |
| 47 | `theorem` | [mem_equiv_left](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/mem-equiv-left.md) | 386 | `result-track:c65d9a6729698a0c03590b5f35f4d9e59e92fafe6afb7dfebb20157f597581b8` |
| 48 | `theorem` | [mem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/mem-of-subset.md) | 390 | `result-track:086e368960327732d9ea80fb0f51a6bb8101532cf8cf53dd9bb671fe4a34ff82` |
| 49 | `theorem` | [Subset.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/subset-trans.md) | 393 | `result-track:d3183da66b2aa9b99f6784ce5927fdea5db09f49c43233b45eaba3f27534575c` |
| 50 | `def` | [Finsets](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/finsets.md) | 399 | `declaration-track:2b071173b2b347931682c1ffea59e783ac3cffe8bf3db23327a18cade1fe97b4` |
| 51 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-9.md) | 404 | `declaration-track:c0993b909297d692eaea7bd7409cbc972a8435548dfc1eb6181f0067a8b6192c` |
| 52 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-4.md) | 407 | `declaration-track:6961249dac595cb43340f229b14d93160268b769823b522326672b36436c4bd7` |
| 53 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/ListsNamespaced.lean/declarations/instance-source-edition-6.md) | 410 | `declaration-track:9abbe888d09ee669064badc42ab230aa0be0a9aadbc07394db6c1f75abe55805` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3d35998267fb952a34fdcb840332b5e9b23a36c14b36bf31a20ec7a8057bf1c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e7011dcd022bbae66fe57b71c38cbbb47f7ab07da405d7792d884357e47d53.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant55e7011dcd022bbae66fe57b71c38cbbb47f7ab07da405d7792d884357e47d53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

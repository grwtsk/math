# Verification target: Fin Enum Namespaced Pi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fad82bcc2719c37eb8a500c9fa332132459b260",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fad82bcc2719c37eb8a500c9fa332132459b260`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Monad.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ProdSigma` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [FinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/finenum.md) | 35 | `declaration-track:8203209628634edb659fd6d2f8571899e8e2b2cf25822259aeaa447ac37ba8c8` |
| 2 | `def` | [ofEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/ofequiv.md) | 51 | `declaration-track:108f72d93503127498e952515c2c07de10db0af9351a9784dcc4edf50aea7072` |
| 3 | `def` | [ofNodupList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/ofnoduplist.md) | 59 | `declaration-track:678f70c73e4a2c8c121dc97a91f307e5f49e8a0c3005460ed8a462388b6d2be1` |
| 4 | `def` | [ofList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/oflist.md) | 69 | `declaration-track:3f154c3ce4414bd718d22f75ffd5d9cf498fd4bf873ecc033b2ecddd9d7bc1e9` |
| 5 | `def` | [toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/tolist.md) | 74 | `declaration-track:e83460d34bb4b16e062225c23379aefed8ba15adff61ab4994495c660130e13d` |
| 6 | `theorem` | [mem_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/mem-tolist.md) | 81 | `result-track:dc2abe35f24c050319b32b236d69bddb7f334d6574e4603f9d8b5a3db3b42496` |
| 7 | `theorem` | [nodup_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/nodup-tolist.md) | 86 | `result-track:37b21dee6bc511115df392faa581a3002adbd46354fa59ad495563817ac74d5c` |
| 8 | `def` | [ofSurjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/ofsurjective.md) | 91 | `declaration-track:354bf145048d95b898bdcab882e8f4a6ab7e670a6f0ec10b792046b8442e190c` |
| 9 | `def` | [ofInjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/ofinjective.md) | 96 | `declaration-track:a281054d2a883814508245713c83aa8d3b4063a3df8139a67265e0f7d62f1a3e` |
| 10 | `instance` | [pempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/pempty.md) | 106 | `declaration-track:b478567c4d82aa1fc5e9bc8b1090102c1f1c03d0954113e55e96c662b4642322` |
| 11 | `instance` | [empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/empty.md) | 110 | `declaration-track:e9a600f8e6e8475c666e17ef7f71420acf93f9217823b36b0f0546fc65ab5b81` |
| 12 | `instance` | [punit](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/punit.md) | 114 | `declaration-track:01e777c403b8f7f9fa4d6dcbbc1652026eabbe86e834515206dd9169c84779bf` |
| 13 | `instance` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/prod.md) | 119 | `declaration-track:fa5fdc10ee7d29544bd2227a8a2a2071a272a717ac6dd38fc45a8299a8be4704` |
| 14 | `instance` | [sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/sum.md) | 123 | `declaration-track:00f7fef1190478b10e5b2f2a503c6b6d94186bfb1d0fece2acab2653ff46d6a9` |
| 15 | `instance` | [fin](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/fin.md) | 127 | `declaration-track:ad42f0f266d1b91a119f4b3cf2c559eddbb435f770c1daa7efb5d96a43372424` |
| 16 | `instance` | [Quotient.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/quotient-enum.md) | 131 | `declaration-track:014865977e3eeb977e4a0f4176c1fc1a5bedc356df0879532ed8158efe170249` |
| 17 | `def` | [Finset.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/finset-enum.md) | 137 | `declaration-track:b716acf654eaeb4c80c6cb659d84f15e27f8c4537dfd81bb665910eea01f47ce` |
| 18 | `theorem` | [Finset.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/finset-mem-enum.md) | 145 | `result-track:90b5fe98d163d6bdffe1b3ba3f71fcb590d99d069ef7460dd9f878f5a1c9760b` |
| 19 | `instance` | [Finset.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/finset-finenum.md) | 179 | `declaration-track:16950d0bb834f2d0e8cb1c279a4d79e747e05d390729ec7ffa48ae724aeed805` |
| 20 | `instance` | [Subtype.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/subtype-finenum.md) | 183 | `declaration-track:6af0d06f85947907574288b0002bf8d6cee1904ad7bd3f598dfc71c1490611ed` |
| 21 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/instance.md) | 188 | `declaration-track:05c5de2a18d1c5681f6ac245664a5dc389e6be92c67b4bb96223c57aa0fc804d` |
| 22 | `instance` | [PSigma.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/psigma-finenum.md) | 192 | `declaration-track:6c0ca0986b374d0fdbff29f4fcbd3b3e10cc968b583cc50c21cd0651d0dc3361` |
| 23 | `instance` | [PSigma.finEnumPropLeft](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/psigma-finenumpropleft.md) | 196 | `declaration-track:a5f50542963ae1df4616735be1ca4f41714872a64d8ca35f70d904980a341941` |
| 24 | `instance` | [PSigma.finEnumPropRight](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/psigma-finenumpropright.md) | 202 | `declaration-track:d60376b6c2b0b8cd0400491c04bf6b7bba6c10cf7a49b541aa768db64253777f` |
| 25 | `instance` | [PSigma.finEnumPropProp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/psigma-finenumpropprop.md) | 208 | `declaration-track:91d62b58c6eee7ed62e73c745e64220c9d55d0156a48f0f969c776216057e025` |
| 26 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/instance-source-edition-2.md) | 214 | `declaration-track:2223f382b9d7d2d7e236d5839cb2d6a0845bad8853cc6748e2e2ece2f93ba51a` |
| 27 | `def` | [Pi.cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/pi-cons.md) | 220 | `declaration-track:1fd1a734fa104e66d1c23928bb6e09b4823b3ee06d1d8e76101d69e5a949d139` |
| 28 | `def` | [Pi.tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/pi-tail.md) | 227 | `declaration-track:7baa73ba1a897d4141a2059c5c0af42b7db7fef1d844323124b64c1e91820333` |
| 29 | `def` | [pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/pi.md) | 232 | `declaration-track:0411df4aab0140369869d0626009e4abc8cf6175e00eae408af5b7655a221819` |
| 30 | `theorem` | [mem_pi](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/mem-pi.md) | 238 | `result-track:605dc9ec8686922d739a13792f638b06afde509df0344f791613c9ef1710a841` |
| 31 | `def` | [pi.enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/pi-enum.md) | 257 | `declaration-track:132eee860313546dacd5e15e3a87672223969ed0af76bb6e73eb0d92a062775a` |
| 32 | `theorem` | [pi.mem_enum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/pi-mem-enum.md) | 261 | `result-track:8d64e837172442df8a8334c250b3f92a67968c49c6036ac33f2a706c7281a8ba` |
| 33 | `instance` | [pi.finEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/pi-finenum.md) | 265 | `declaration-track:befc4ac23e05325f83cdd003265d280c687a635e67a6f5453afb491245a1e901` |
| 34 | `instance` | [pfunFinEnum](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinEnumNamespacedPi.lean/declarations/pfunfinenum.md) | 270 | `declaration-track:ee7a2009915bb60a024864c309e0fed64355f59db9b890aca1073e070d4d976e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4bbc6cd21ebdd09682964473f2dd0f5dc762188b87ae0c9df0b848cf6c205cf6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FinEnum/Variant5e6369268dc903479142471c3cc7458b8999b94d447ed59f80f08c01cee8f904.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

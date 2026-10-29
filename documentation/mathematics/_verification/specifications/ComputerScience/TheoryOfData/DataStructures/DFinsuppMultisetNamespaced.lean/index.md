# Verification target: DFinsupp Multiset Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef971876f196216acb1ff8ae126be8b1d37d7156",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant0584634373c4e1fe79a9d06f416848767d2fc288048fdf76ab4ce7ccc0cb96e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef971876f196216acb1ff8ae126be8b1d37d7156`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant0584634373c4e1fe79a9d06f416848767d2fc288048fdf76ab4ce7ccc0cb96e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant0584634373c4e1fe79a9d06f416848767d2fc288048fdf76ab4ce7ccc0cb96e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.BigOperators` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.DFinsupp.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addZeroClass'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/addzeroclass.md) | 31 | `declaration-track:713e5e46a82af2b68d5e57342b6a6d006ebf549dc007179112bf86e4037d5114` |
| 2 | `def` | [toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset.md) | 37 | `declaration-track:77d19bb345733a9ac51d3ac7889cb13153305f78d81d365c9274626ee1862570` |
| 3 | `theorem` | [toMultiset_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset-single.md) | 41 | `result-track:0db8e7cb19e688ea700b93185f57d621768790046790921f5e53a13290854926` |
| 4 | `def` | [toDFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp.md) | 52 | `declaration-track:14821d5e6be8a7903967afed0335d724e99575a610d1be8b2e1235b7db89d455` |
| 5 | `theorem` | [toDFinsupp_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-apply.md) | 60 | `result-track:ba178aa22bf23652de07d5af57df3eea260fe3298419c3a745ff4624a0593fef` |
| 6 | `theorem` | [toDFinsupp_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-support.md) | 64 | `result-track:700ab572dc2dcafe7c1ac432c8ccb6b7bf9cfeee7d7ac7c62f4047fbba94b2ff` |
| 7 | `theorem` | [toDFinsupp_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-replicate.md) | 68 | `result-track:873a29633d947ce7bacde86a6cc90fd09e88d764cd7c38e8fae86c2655cf3fa0` |
| 8 | `theorem` | [toDFinsupp_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-singleton.md) | 75 | `result-track:0998329e5c2d2312a631cd97d565cc8de78508c7a5e58ca83423355fa19a8d5b` |
| 9 | `def` | [equivDFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/equivdfinsupp.md) | 80 | `declaration-track:a2043c17d932efd99cfdf4cfbea3799dba3c673e44dbc12e67a03f9e11dfe54d` |
| 10 | `theorem` | [toDFinsupp_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-tomultiset.md) | 84 | `result-track:4134b2becb82d5904e8e2bdca85a6bec68f6d8bcb3b88e88f40a327db289f29e` |
| 11 | `theorem` | [toDFinsupp_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-injective.md) | 87 | `result-track:c732f30c085eb6e10d75073c749eb2eb3695d2023017d64ebf579a69912c0611` |
| 12 | `theorem` | [toDFinsupp_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-inj.md) | 91 | `result-track:7edf2a5da0871f0091d5bfa522ec6dd76cbf9d2e3c690b709e4c1e35fcbfd061` |
| 13 | `theorem` | [toDFinsupp_le_toDFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-le-todfinsupp.md) | 95 | `result-track:8d7ef9535dbc625b8d3fb0355f9a5de43c9ce90191243df5dfeb923ecb417075` |
| 14 | `theorem` | [toDFinsupp_lt_toDFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-lt-todfinsupp.md) | 99 | `result-track:bdee714d364a6de07a9d35e8435ac95d0f2891283ede5944cc93974bc26c061a` |
| 15 | `theorem` | [toDFinsupp_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-inter.md) | 103 | `result-track:5c94ecdcdbf53108943d0c2886ac5799a9939e1d51e24d92d7c58d21070f0670` |
| 16 | `theorem` | [toDFinsupp_union](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/todfinsupp-union.md) | 107 | `result-track:b8dc107fe3f17c1ab0a0b8c9a863912827c806f995045367e91ff9fb05536acb` |
| 17 | `theorem` | [toMultiset_toDFinsupp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset-todfinsupp.md) | 118 | `result-track:1b64ed9baac1f9cd5f37fc2649fa8fa26f0194102111841c882b4c58b6cfa912` |
| 18 | `theorem` | [toMultiset_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset-injective.md) | 122 | `result-track:eed2105ffdb0d23ae7c69d3fc08cb1015398987934a46807aefbccedfa5e826e` |
| 19 | `theorem` | [toMultiset_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset-inj.md) | 126 | `result-track:4a532efd2c7e020038791a81d368b1f41123ffaa985103e4eb7eee65ff904a06` |
| 20 | `theorem` | [toMultiset_le_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset-le-tomultiset.md) | 130 | `result-track:d00ae59d493758904022913367d7c93b9a3abdd646db0d22b63331411ae8203d` |
| 21 | `theorem` | [toMultiset_lt_toMultiset](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset-lt-tomultiset.md) | 134 | `result-track:90ddfbf456abe10d209f93d429f15d3835779f06030dc9eb5014b4f23e6d7ff9` |
| 22 | `theorem` | [toMultiset_inf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset-inf.md) | 140 | `result-track:0e7db56951c08da2262b4cf4c635ebd45c45f8e6611d0fadb4f0dd15e6214dad` |
| 23 | `theorem` | [toMultiset_sup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppMultisetNamespaced.lean/declarations/tomultiset-sup.md) | 144 | `result-track:3caba0f707195015a89da556946fd14f4eb43870edfca62e5a8b417e233e4ebc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e801e70b27024f300a5689c66044a3f678ac6bc90899a4657b7ba6935bebfd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant0584634373c4e1fe79a9d06f416848767d2fc288048fdf76ab4ce7ccc0cb96e5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Multiset/Variant0584634373c4e1fe79a9d06f416848767d2fc288048fdf76ab4ce7ccc0cb96e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

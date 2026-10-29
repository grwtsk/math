# Verification target: Fun Like Equiv Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e067507d9bfec0a76e34996ec863e783962eb6c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant81698cce543042f2ba56ae6eaa0c54b29be4bc94b6849c07db04f20e19d58a89.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e067507d9bfec0a76e34996ec863e783962eb6c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant81698cce543042f2ba56ae6eaa0c54b29be4bc94b6849c07db04f20e19d58a89.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant81698cce543042f2ba56ae6eaa0c54b29be4bc94b6849c07db04f20e19d58a89.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [EquivLike](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/equivlike.md) | 142 | `declaration-track:b6b9625a65e8ebe128f7d42ca77f2e41e560630f9cac5b6ec8468bf69f3c9f93` |
| 2 | `theorem` | [inv_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/inv-injective.md) | 160 | `result-track:8df93f27fa0937362313c6e508f337e62bb4c2ca6bbeb2486413f370441eaeab` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/instance-source-edition-2.md) | 164 | `declaration-track:a566e38f2b8f535c20090feefe0475869ca367810bd4067b87a2fdfee587db5b` |
| 4 | `theorem` | [coe_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/coe-apply.md) | 169 | `result-track:39bf3950371c669fcff99acdb757b9a627bda365454817bfddda70f016ac9f13` |
| 5 | `theorem` | [inv_apply_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/inv-apply-eq.md) | 171 | `result-track:10a03c29fd26f946adb01382d6647b8523c1eb2628c2b08a5e750aa63843f350` |
| 6 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/instance.md) | 175 | `declaration-track:501ba2d30223dcd9df27012aba15fea5252a2eb8907fbe922b95212b33cdf1cd` |
| 7 | `theorem` | [injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/injective.md) | 178 | `result-track:1e54e29f7b5b2788decc09c85ee88b86455e20f3af6bf45c5ecf14fb85f69f65` |
| 8 | `theorem` | [surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/surjective.md) | 181 | `result-track:17e1d50eab4d8ef7731ec4cb27092d53f7931117d720bc0179f6e27392ce918a` |
| 9 | `theorem` | [bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/bijective.md) | 184 | `result-track:81ec7e53d416a7032a48e1b8b0af6caff88598ed9d7811d1428289bc8c02de8e` |
| 10 | `theorem` | [apply_eq_iff_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/apply-eq-iff-eq.md) | 187 | `result-track:dbdfe19bde55251b714ac1a6c86f0126cd34f6354665865dd582fba9fb5c4a01` |
| 11 | `theorem` | [injective_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/injective-comp.md) | 191 | `result-track:b5d9b6e681fc19a4d0767c82343944e55ce3a9e100766ab672f1d6ea81b0abc7` |
| 12 | `theorem` | [surjective_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/surjective-comp.md) | 195 | `result-track:a4886f03c6e0a3b59cfab9a993e6592f550a8f375bab7938028be00081df1408` |
| 13 | `theorem` | [bijective_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/bijective-comp.md) | 199 | `result-track:3c0bc2e9e5eb42a46a8a3c1f97bb20425fb7c4e5205c6b5d69a0736cb5a5a4e4` |
| 14 | `theorem` | [inv_apply_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/inv-apply-apply.md) | 209 | `result-track:23658ab2d46fd831acb5a07e2dc2aff9e28f41857d95334c8f4a0498a95150dd` |
| 15 | `theorem` | [apply_inv_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/apply-inv-apply.md) | 218 | `result-track:67368d14d9be16b95c19722cf77bbbb7bc49b13749190c10c7e72514c4a0712d` |
| 16 | `theorem` | [comp_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/comp-injective.md) | 220 | `result-track:613e42c5634fa0be80bcc0433a524efba17256e65f8572be61868ae1520fb512` |
| 17 | `theorem` | [comp_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/comp-surjective.md) | 224 | `result-track:729f86900fc137d930feff4fdb589a9624ff2a6af98a1d18bcf481f9fcb6dc4f` |
| 18 | `theorem` | [comp_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/comp-bijective.md) | 228 | `result-track:1f2a6c327632fa987eaf64e6d3d146d281a8a4e0fef61c97cd377ff3ba30297a` |
| 19 | `lemma` | [subsingleton_dom](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeEquivPublic.lean/declarations/subsingleton-dom.md) | 233 | `result-track:f0c3b844941fa4cc8a027a4feb90e811c06f50a77ce79f78c1a129647d0f69de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d5cf951b7ba0f19aa995a052b7de3d04beee98744f5b7c9acd2b53944ae51e03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant81698cce543042f2ba56ae6eaa0c54b29be4bc94b6849c07db04f20e19d58a89.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Equiv/Variant81698cce543042f2ba56ae6eaa0c54b29be4bc94b6849c07db04f20e19d58a89.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

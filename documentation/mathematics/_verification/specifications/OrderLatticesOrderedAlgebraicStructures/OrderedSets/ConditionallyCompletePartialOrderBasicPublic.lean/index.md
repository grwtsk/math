# Verification target: Conditionally Complete Partial Order Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7648a5d6ef9a5c74392a314632fe39e479f114a7",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant391ac050eb2aac8500969aa89fdc9ed013575e1124aa98e1d61ba860b0af4f79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7648a5d6ef9a5c74392a314632fe39e479f114a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant391ac050eb2aac8500969aa89fdc9ed013575e1124aa98e1d61ba860b0af4f79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant391ac050eb2aac8500969aa89fdc9ed013575e1124aa98e1d61ba860b0af4f79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/instance.md) | 32 | `declaration-track:0687cd315fece35b75b06194b22d156ebf2b70e6805a9de85166bdd028f7542d` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/instance-source-edition-3.md) | 36 | `declaration-track:e0629fb772533f71b30d3a3891b427b010880519fca070701b9793c50ddb9a0b` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/instance-source-edition-2.md) | 40 | `declaration-track:5404c038b9562e820c519cd7a4f30d12b11d1479ec9cb6ebedf9861a83d087f0` |
| 4 | `theorem` | [DirectedOn.le_csSup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-le-cssup-of-le.md) | 50 | `result-track:9620ddd78d57f36ce05b463f39a374c2eea33aba3cd84f974eab402d5b574112` |
| 5 | `theorem` | [DirectedOn.csSup_le_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-cssup-le-cssup.md) | 55 | `result-track:97f7df5e31a8799ed5e9544bccdd3627c91304cba2797ba9ce11d03090342eaa` |
| 6 | `theorem` | [DirectedOn.le_csSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-le-cssup-iff.md) | 61 | `result-track:a13be65ac6a38f0acf349920a645b6b5a01e4bec2078350f7c8f0154fb577e02` |
| 7 | `theorem` | [IsGreatest.directedOn](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/isgreatest-directedon.md) | 66 | `result-track:65a1785945ad73a0a585dc4a35571e23b962bd3cb028a9008c5b8cfdf2977b82` |
| 8 | `theorem` | [IsGreatest.csSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/isgreatest-cssup-eq.md) | 71 | `result-track:68e0dd2b172d0b9e727130f2996eb8006500bc75231cbc8e0ff5fdf147bc1740` |
| 9 | `theorem` | [IsGreatest.csSup_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/isgreatest-cssup-mem.md) | 75 | `result-track:4b1c16f8ce289979bf6ebfa96aecb3986e51cffddd79e3070d128668fd692bec` |
| 10 | `theorem` | [DirectedOn.csSup_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-cssup-le-iff.md) | 79 | `result-track:c033cf081b9ca32a00278bfce9dba9c90be005ba25b9cc3151ae240af30d3ff6` |
| 11 | `theorem` | [DirectedOn.notMem_of_csSup_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-notmem-of-cssup-lt.md) | 84 | `result-track:872ca97c7ed98fd9ed2a297fb53b2ff1e133ddd9ea984d32fe6a64c864f9819f` |
| 12 | `theorem` | [DirectedOn.csSup_eq_of_forall_le_of_forall_lt_exists_gt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-cssup-eq-of-forall-le-of-forall-lt-exists-gt.md) | 95 | `result-track:76150cbe0ed22256e292a290d2c51c2f6c4d54788813b008193b37f78805bcd2` |
| 13 | `theorem` | [DirectedOn.lt_csSup_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-lt-cssup-of-lt.md) | 113 | `result-track:cbf48dff6449e3328b5d2ee4823a9c0f9ba484b22cc156b03c850015fa06a2db` |
| 14 | `theorem` | [csSup_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/cssup-singleton.md) | 119 | `result-track:79911bd232a3c00dda8ce04639e910d722c11140a96ee8f78ab4a7cc41263dc9` |
| 15 | `theorem` | [csInf_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/csinf-ici.md) | 123 | `result-track:c35c9952283cb1c75d8c255f6e85b7eb5249c52aeffd78f753c34c916a08e7c0` |
| 16 | `theorem` | [csInf_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/csinf-ico.md) | 128 | `result-track:51680c151b9e0c255512be6efe265e1c5963208a9ebe403e47b569ac0d10c716` |
| 17 | `theorem` | [csInf_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/csinf-icc.md) | 133 | `result-track:e381b495578de49ad72482a61d0eb9834877274f8aa14a488b54d738f1fed070` |
| 18 | `theorem` | [csSup_Iic](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/cssup-iic.md) | 138 | `result-track:303d4a11d3e49b083d16e06b261b2d90ccb6e1d2a96826f693be7d3b0c902bef` |
| 19 | `theorem` | [csSup_Ioc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/cssup-ioc.md) | 142 | `result-track:c6c305db05f67a7878d3e359c073dfc2d74bf2d3fa4462125bf0e583bb5b469f` |
| 20 | `theorem` | [csSup_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/cssup-icc.md) | 146 | `result-track:bbdb97c82039595e491ab68b9d67413efb47bbc2a276e66ecbb2fb396cc1bf74` |
| 21 | `lemma` | [sup_eq_top_of_top_mem](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/sup-eq-top-of-top-mem.md) | 150 | `result-track:54225fe33103fdf97093f2d27e95bcfba097ff3142d5d979610ee2857ac48aab` |
| 22 | `theorem` | [DirectedOn.subset_Icc_csInf_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-subset-icc-csinf-cssup.md) | 159 | `result-track:bbddad3152fc6e4f08491ecd5a79e9b0382f7b1f70d37c668416e80aef00fb62` |
| 23 | `theorem` | [DirectedOn.csInf_le_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConditionallyCompletePartialOrderBasicPublic.lean/declarations/directedon-csinf-le-cssup.md) | 166 | `result-track:7a6ae2a7d5333551981c5ea0bea0e8b11ddae02ab850f09141115892c0758339` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f897d590874015575401dfd0d1534d8ee3896e9883f4bda277e9d20f88876a0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant391ac050eb2aac8500969aa89fdc9ed013575e1124aa98e1d61ba860b0af4f79.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant391ac050eb2aac8500969aa89fdc9ed013575e1124aa98e1d61ba860b0af4f79.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

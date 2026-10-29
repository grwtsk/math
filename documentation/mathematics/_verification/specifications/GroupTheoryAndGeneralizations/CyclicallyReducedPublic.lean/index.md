# Verification target: Cyclically Reduced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d30c816183dc6a2f17e0778a2c2154979c8fd9c6",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d30c816183dc6a2f17e0778a2c2154979c8fd9c6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean.json)

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
| 1 | `def` | [IsCyclicallyReduced](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/iscyclicallyreduced-source-edition-2.md) | 42 | `declaration-track:49168ed3fe18a7dfb92ac0652e12ab1b4e586fd92fbc1bcf0f59d3e3b9b872a3` |
| 2 | `theorem` | [isCyclicallyReduced_iff](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/iscyclicallyreduced-iff.md) | 46 | `result-track:e8aadfda9fce22a2807659972a3a86ee45631451677e8621e1ed700173ad4a47` |
| 3 | `theorem` | [isCyclicallyReduced_cons_append_iff](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/iscyclicallyreduced-cons-append-iff.md) | 51 | `result-track:5cbf65c8c2de4a6f956f0f8ad0d8484f9e370c7b73572b75217b3b4bbfff7252` |
| 4 | `theorem` | [nil](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/nil-source-edition-2.md) | 60 | `result-track:7686ef14c1689f7f0c5aa7947c481c467a8d1c1e7d6faa505390cdea179f9db8` |
| 5 | `theorem` | [singleton](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/singleton-source-edition-2.md) | 64 | `result-track:c60016fd48eedc4fda08560a766662fefffcca40501b5f2977297288139b244d` |
| 6 | `theorem` | [isReduced](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/isreduced.md) | 69 | `result-track:466d70ce439c5ffc390bcb95030e3974f53ede0ad34fa77d27dc50cc2121be3c` |
| 7 | `theorem` | [flatten_replicate](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/flatten-replicate.md) | 72 | `result-track:a953b2ad2aa18b5d153afd244ba01e85a46814933d81d321ba17ee57a9785a6a` |
| 8 | `theorem` | [IsReduced.append_flatten_replicate_append](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/isreduced-append-flatten-replicate-append.md) | 87 | `result-track:01bbd02bbe3cafc3b58fe57edcea008d8daeb1436d152cddad2dfa18582aabdc` |
| 9 | `def` | [reduceCyclically](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/reducecyclically.md) | 110 | `declaration-track:ac83e334adff087469a0323cc201604a2e69ecef2b38b456d5d5de20e1fe909a` |
| 10 | `theorem` | [nil](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/nil.md) | 120 | `result-track:639321dd1d4428e443173b03acc5300904b299ab9df83e7359130e9864f4da79` |
| 11 | `theorem` | [singleton](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/singleton.md) | 123 | `result-track:af0a8fb7721b877aac26c20f02a2c28b23d4f1cf462ebf48664e5d6980e08148` |
| 12 | `theorem` | [cons_append](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/cons-append.md) | 127 | `result-track:d7384cab930ad54276f8acb3b2b93b222cff8b348bc7dd969c46b6ff86ecfea8` |
| 13 | `theorem` | [isCyclicallyReduced](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/iscyclicallyreduced.md) | 134 | `result-track:10cee454a68e8af795d94b96d54ada2d986271ab8a8900bcf8f2ed46d5ca0a4e` |
| 14 | `def` | [conjugator](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/conjugator.md) | 150 | `declaration-track:0ece8c2283e87a4efe04e6105207348861b9ec0c7b1695eb28693b02e7b7948b` |
| 15 | `theorem` | [conjugator.nil](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/conjugator-nil.md) | 157 | `result-track:b905ce9254430c31c5ff8f3d28b96a07ffb70bbf3addf28e9e7342172453b9fc` |
| 16 | `theorem` | [conjugator.singleton](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/conjugator-singleton.md) | 160 | `result-track:067aa09ae6eb648065cd99427938ce4470cca27b29df7a623daf1d6220928547` |
| 17 | `theorem` | [conjugator.cons_append](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/conjugator-cons-append.md) | 163 | `result-track:7ef7f8805b138aee2dc84d4dfe073d8d0da8f2b5b6affa926cd2903f497b582f` |
| 18 | `theorem` | [conj_conjugator_reduceCyclically](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/conj-conjugator-reducecyclically.md) | 168 | `result-track:14097ae64cd9a3af1ab3042d03872c8f3cae7983c806a7823fe34c7e64304144` |
| 19 | `theorem` | [reduce_flatten_replicate_succ](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/reduce-flatten-replicate-succ.md) | 182 | `result-track:342aa582ae39b1d481fe581c6ffb9e08e450bfd50e81979670f80e83f9541a81` |
| 20 | `theorem` | [reduce_flatten_replicate](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/reduce-flatten-replicate.md) | 203 | `result-track:2bae510bfaa0c4564d2a7ee077f81d0723804527679567fcc8ce3cedb4d033e9` |
| 21 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/CyclicallyReducedPublic.lean/declarations/instance.md) | 223 | `declaration-track:17ec015ba9cf9efd608feef66402d9bcf0570e01a50351939d19a42467e3e0c2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=df9a41774112641c68d17171aef92554f8f6a872bade9444297c82b8ad0b067c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CyclicallyReduced/Variantd08aa4d77109c60f3409e9c672ac3936bbc02f6070e9564eaba4b9c0eb139e7a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

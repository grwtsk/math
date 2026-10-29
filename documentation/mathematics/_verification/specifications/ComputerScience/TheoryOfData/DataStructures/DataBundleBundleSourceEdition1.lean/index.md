# Verification target: Data Bundle Bundle Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2397d4a6c0ebabe6b420b6760b2a9d5bd4c3c6af",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2397d4a6c0ebabe6b420b6760b2a9d5bd4c3c6af`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TotalSpace](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace.md) | 52 | `declaration-track:51d1e94df4ea412de0f633931fbf24a77a8749054551b1e3bfc5321ea4100ec7` |
| 2 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/instance-source-edition-3.md) | 59 | `declaration-track:ebd98681d1b98fb136ab4e0d85ba0018a27d6d5dff84c31cebf82d3f96bf3dea` |
| 3 | `abbrev` | [TotalSpace.mk'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-mk.md) | 67 | `declaration-track:3ef08c340881e3f269f3a5e5cff53bb17d5990d3bb3933bce2187e3423c170da` |
| 4 | `theorem` | [TotalSpace.mk_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-mk-cast.md) | 69 | `result-track:dcbdf01fd574d2a146e183b11adf33d77676f25419ce757f028f89d805dbffbe` |
| 5 | `theorem` | [TotalSpace.mk_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-mk-inj.md) | 74 | `result-track:4f08a196fcaac3b559bcebfa9b282b359b6125078b5542f01ac89eefd3c15224` |
| 6 | `theorem` | [TotalSpace.mk_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-mk-injective.md) | 77 | `result-track:5a748cf2e1112ca36c26f098c0eb4673c34207974e2977b191ee8e1aa44ea2e3` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/instance.md) | 80 | `declaration-track:797eb03fd96d6df14a03f50ee08ae27311c4370340cf4b1c0fae5474674e11d0` |
| 8 | `theorem` | [TotalSpace.eta](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-eta.md) | 87 | `result-track:ebe762afc29d1599c15bc0f738fdc36c96ea6d4816957454e5fa97ee7285510f` |
| 9 | `theorem` | [TotalSpace.exists](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-exists.md) | 91 | `result-track:5de77a07d73cc759eaad792cd223c477e633271ee47b6443fb42eb5a63c39cd8` |
| 10 | `theorem` | [TotalSpace.range_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-range-mk.md) | 95 | `result-track:f8f6cbf8145ea4dbc50ffdd16b617d73d5fafbd510ada9fd6cfbef6764cc2c4a` |
| 11 | `def` | [Trivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/trivial.md) | 107 | `declaration-track:2cd8f2e84a6234a7823e8ec809b1a05bca7b4ee23a0f96e8f9eb4453d4e3b4c8` |
| 12 | `def` | [TotalSpace.trivialSnd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-trivialsnd.md) | 111 | `declaration-track:80d3bf401574736b3cc9cdf2a37b82c507f81baa8b200345e928aa62bd7334bd` |
| 13 | `def` | [TotalSpace.toProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/totalspace-toprod.md) | 117 | `declaration-track:19268c076739ac8b39206da56ddaa3b4a0a655180a314f5d434ff33ef6d5f4c1` |
| 14 | `def` | [Pullback](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/pullback.md) | 130 | `declaration-track:8854b737c79b7b4e93802026eb72bcf2f11e1d0f83ad537fee62d02b531b2e13` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/instance-source-edition-2.md) | 136 | `declaration-track:82cbc1e7cf9ef8b4c38524cb97188f2b7c3d4f1d6482ff3a79876743600d697f` |
| 16 | `def` | [pullbackTotalSpaceEmbedding](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/pullbacktotalspaceembedding.md) | 141 | `declaration-track:c2d171cbd5307d04293cbb566a73f283343744d22b62173732629a6d5d7cc6d7` |
| 17 | `def` | [Pullback.lift](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/pullback-lift.md) | 147 | `declaration-track:db7cef32e099a1cbe9437a0223031ca6139b3744c1389a03eb6ba482ffe11e49` |
| 18 | `theorem` | [Pullback.lift_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataBundleBundleSourceEdition1.lean/declarations/pullback-lift-mk.md) | 151 | `result-track:cc7d6526ad88e09d8d6e9839e793d908298bd0193f81a4a7ff3ee9a0ac83c864` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=142079b50dc4fd760514109f2bd7974e881f0b0c402960699b70760b1b913153 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bundle/Varianta24bd7bdcb4c89b08014e92165c9edce28e1ce8c9ce49e28f84fc92c5a25b2bc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

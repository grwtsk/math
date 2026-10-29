# Verification target: Rev Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a39df48d490352449f25fa15c95bac80b5029b05",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5240f2b9f51fd8cd779c6a3cb4ff416818b2b4ccb520d573b53b4d5987b71972.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a39df48d490352449f25fa15c95bac80b5029b05`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5240f2b9f51fd8cd779c6a3cb4ff416818b2b4ccb520d573b53b4d5987b71972.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5240f2b9f51fd8cd779c6a3cb4ff416818b2b4ccb520d573b53b4d5987b71972.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rev_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-involutive.md) | 34 | `result-track:002fbb890d678db91c23adcb1d6fa090ab2954dd1d4f1ad82106e7d90a8ac265` |
| 2 | `def` | [revPerm](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/revperm.md) | 39 | `declaration-track:b44d8af51034ae2dbb026489bb350283bbeffed0a665389279ecdb633c53716f` |
| 3 | `theorem` | [rev_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-injective.md) | 42 | `result-track:8a72fc554968aaa5973ab93a4d440925104944653c22f9346326cdd68e51de9d` |
| 4 | `theorem` | [rev_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-surjective.md) | 45 | `result-track:830ea2d59da6ccb7a73f5e201ffd71377c943706f38a2eab603cbb1528c7c217` |
| 5 | `theorem` | [rev_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-bijective.md) | 48 | `result-track:4d9762ca5ccf7bed1b9db8a28524a8acf3628ec78a8d957bcaee9f2be8fc581a` |
| 6 | `theorem` | [revPerm_symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/revperm-symm.md) | 52 | `result-track:26a9a246e6b0f1949d8b7e131979782fb15c81963b65ee315310010191be7fe1` |
| 7 | `theorem` | [cast_rev](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/cast-rev.md) | 55 | `result-track:6a773265a8d4ddfdef0a73504058696495078bfbd188599db366387cabfd2c6d` |
| 8 | `theorem` | [rev_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-eq-iff.md) | 59 | `result-track:602f320bd702406326f5ca43c7f752fc38981715491409e881cb71b94cfa0d1f` |
| 9 | `theorem` | [rev_ne_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-ne-iff.md) | 62 | `result-track:0b07a006f4a5f4e2e90b34c37a043af436e210d4dbfe89c898ccaec160cafac0` |
| 10 | `theorem` | [rev_lt_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-lt-iff.md) | 64 | `result-track:6b8a03622e306ce717b283d9f0fa89e79d70ed0c58b9bfbf9759214a6927120b` |
| 11 | `theorem` | [rev_le_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-le-iff.md) | 67 | `result-track:ca10d2b11d030fefa2121833277125fa718a3f39fbee806fd8ea74ff76370816` |
| 12 | `theorem` | [lt_rev_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/lt-rev-iff.md) | 70 | `result-track:b877f5350e0fb55799aefe0b62aff9b11a41176ae150e307eb570f4fdda82311` |
| 13 | `theorem` | [le_rev_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/le-rev-iff.md) | 73 | `result-track:820cb75ca8c3e7e85059d129462881cb95cdd699cbdba042afa0701723bd3196` |
| 14 | `theorem` | [val_rev_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/val-rev-zero.md) | 76 | `result-track:9f8ec1226b93c07054c4aa5b0f83344ea133ef04029173738d0d546d06ed4c0a` |
| 15 | `theorem` | [rev_pred](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-pred.md) | 78 | `result-track:9997dfd859466a198e807db8ce9a42f5f3410437c812b64caa29f070f505e2c6` |
| 16 | `theorem` | [rev_castPred](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-castpred.md) | 82 | `result-track:3e58c8f6d6c27365875987df573e21eaed90df482c5c282f32d53f4ec91b623f` |
| 17 | `lemma` | [succAbove_rev_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/succabove-rev-left.md) | 87 | `result-track:297500b88ed0b03f2884610826b1b847688fb1f737e108cc2b34006cc8c1e6fa` |
| 18 | `lemma` | [succAbove_rev_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/succabove-rev-right.md) | 95 | `result-track:e519a1d21817c93a874e0bcdf9a6b9cd8bd7079b0bdad6c9612c5898ea705c89` |
| 19 | `lemma` | [rev_succAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-succabove.md) | 99 | `result-track:77d3fb8ca86b3d44d010f51b432196191a6a09957af558068a535b13ffb786b3` |
| 20 | `lemma` | [predAbove_rev_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/predabove-rev-left.md) | 103 | `result-track:414438b18df8bafc9432573f914dc97bb19a212c40cc00539a489c0f982b1c86` |
| 21 | `lemma` | [predAbove_rev_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/predabove-rev-right.md) | 111 | `result-track:c9e0cfadf8446e04743fbd9ec7ecbba66ea09f5ee452c996f80c53bea86793bf` |
| 22 | `lemma` | [rev_predAbove](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-predabove.md) | 115 | `result-track:95fc445e5510028179c6326ed6e8a741c4d0864fef5ee17ef83be216f9dfbfb3` |
| 23 | `lemma` | [add_rev_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/add-rev-cast.md) | 118 | `result-track:6b97f439b24001ee12a7712c14969ada364b219146a6496ba55fc6b1d5f696f0` |
| 24 | `lemma` | [rev_add_cast](../../../../../../ComputerScience/TheoryOfData/DataStructures/RevNamespaced.lean/declarations/rev-add-cast.md) | 122 | `result-track:da208ef94246761af35302261d14140037079f9d6307989418dbae820cb2686c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79b7fa423c42d43e43a4397af6a18b6cd002326e6145fe9b4574f1db13b1819b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5240f2b9f51fd8cd779c6a3cb4ff416818b2b4ccb520d573b53b4d5987b71972.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Rev/Variant5240f2b9f51fd8cd779c6a3cb4ff416818b2b4ccb520d573b53b4d5987b71972.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

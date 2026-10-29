# Verification target: DFinsupp Sigma

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a89ec3e1ce239ffcc2e138625e35889805ad8c65",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantd68bec3f28ef1d71bce6d8fd1484f980ce7dc2c5e3fad369e531dd48015703c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a89ec3e1ce239ffcc2e138625e35889805ad8c65`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantd68bec3f28ef1d71bce6d8fd1484f980ce7dc2c5e3fad369e531dd48015703c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sigma/Variantd68bec3f28ef1d71bce6d8fd1484f980ce7dc2c5e3fad369e531dd48015703c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Module` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Quotient` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sigmaCurry](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmacurry.md) | 43 | `declaration-track:a1d7c6788dc5f0954449f3df65a0a41dccd7998795029abf32349394a61dc9b4` |
| 2 | `theorem` | [sigmaCurry_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmacurry-apply.md) | 55 | `result-track:1f54b17cd620a3b0dc9161cc5b418d46d0308035446d5b0c04049888869e8d75` |
| 3 | `theorem` | [sigmaCurry_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmacurry-zero.md) | 60 | `result-track:668566d048c3be25b095adbd486d29f6a1529f55481891ee5e0ff64ccb762b6d` |
| 4 | `theorem` | [sigmaCurry_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmacurry-add.md) | 65 | `result-track:24db3cbeea7d66e7b748dee4cefac32065fd186ae06e4035762778235bffc545` |
| 5 | `theorem` | [sigmaCurry_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmacurry-smul.md) | 73 | `result-track:335a31eb2bdb165f19cd7426fb295e4f2eb12bdc23bc0dfd78ba3f26ff0e28f1` |
| 6 | `theorem` | [sigmaCurry_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmacurry-single.md) | 82 | `result-track:2aae250c6bf81784e80bd755b35c93c555c6a19e2bc34db842b370a083bc6977` |
| 7 | `def` | [sigmaUncurry](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmauncurry.md) | 100 | `declaration-track:aecdda8b4486819b6984f1a05c8509c0f857f46f022f42a0720796fa33aced91` |
| 8 | `theorem` | [sigmaUncurry_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmauncurry-apply.md) | 121 | `result-track:b4094ddb2d2a66ff97987fcbb52b734949fb7d2a8a4d14b1505dddbdd0775386` |
| 9 | `theorem` | [sigmaUncurry_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmauncurry-zero.md) | 127 | `result-track:6d715544e7b1dd2116db4f578649ef1c243b7237e1f5f390320ec3cb75935b6f` |
| 10 | `theorem` | [sigmaUncurry_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmauncurry-add.md) | 132 | `result-track:ed188e66d3ec46727f2001736b09488b08f26f9fbac5c3cc31516ad54e4c47bf` |
| 11 | `theorem` | [sigmaUncurry_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmauncurry-smul.md) | 137 | `result-track:aa1da2eb07524479ac9163a4bc9f4d87799e775fbbd851bb937daa51a710a5af` |
| 12 | `theorem` | [sigmaUncurry_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmauncurry-single.md) | 143 | `result-track:3d94b4a3984d4bb2023f14c462e59914e77c8ae21d6c923f18dd897b6a49c3f4` |
| 13 | `def` | [sigmaCurryEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/DFinsuppSigma.lean/declarations/sigmacurryequiv.md) | 161 | `declaration-track:07e3f41a1eeba0e103cc0e6dc657c53261d4ace71fb6858375dd47a3961d835f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0b79404c9d8eaddb6f2525e33a97edd6a30adb8cff7703cd3c7d6e5b45c282f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Sigma/Variantd68bec3f28ef1d71bce6d8fd1484f980ce7dc2c5e3fad369e531dd48015703c0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sigma/Variantd68bec3f28ef1d71bce6d8fd1484f980ce7dc2c5e3fad369e531dd48015703c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

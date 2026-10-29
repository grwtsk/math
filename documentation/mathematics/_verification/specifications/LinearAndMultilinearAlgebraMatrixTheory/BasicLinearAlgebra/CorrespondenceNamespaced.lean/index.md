# Verification target: Correspondence Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91394e23a7690b64044fe94a8b2103e97d8ca97e",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Correspondence/Variant0320aa3c3442ff7b69b8a570be33fd0072d2b982bf649c7cea73c40d8c4dddf9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91394e23a7690b64044fe94a8b2103e97d8ca97e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Correspondence/Variant0320aa3c3442ff7b69b8a570be33fd0072d2b982bf649c7cea73c40d8c4dddf9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Correspondence/Variant0320aa3c3442ff7b69b8a570be33fd0072d2b982bf649c7cea73c40d8c4dddf9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Formal` — import line 6; external provider; requires a separately pinned dependency.
- `BitMatrix.Codec.Profiles` — import line 7; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 8; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Correspondence` — import line 9; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityCantor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/identitycantor.md) | 20 | `declaration-track:b6fa39243676f9c79d759152ead4c735b3d5e28c91f6fa7d68f334624ccd855b` |
| 2 | `def` | [falseBaseline](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/falsebaseline.md) | 24 | `declaration-track:f99c9f7e1c8477c52f9d0459bad9373df2253cd4e987dd19d8a4601737440440` |
| 3 | `def` | [natAddressEnumeration](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/nataddressenumeration.md) | 26 | `declaration-track:208a67e6144123ed7b04a8b464380065297b05ada64d1ea2e2f2e4ab1e7b3cb2` |
| 4 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-25.md) | 34 | `declaration-track:fa4f1ebf7583c47d2bca6ff8c2c370cacd12263993d71ce455899197ecd72786` |
| 5 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-24.md) | 42 | `declaration-track:efd6c87bbf1136e0a0a57f58d95cd08c2f0f1cd263798f1ee01f988ffe7f17b3` |
| 6 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-18.md) | 49 | `declaration-track:c2492e38bc94a947acf59617dd6ac4c3a3e0b9d332e5ef497b8ed91a61135464` |
| 7 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-22.md) | 53 | `declaration-track:e67c319e57b329481355ffe14e94e413611cbc25705b25ac383f78af1a7418bf` |
| 8 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-8.md) | 57 | `declaration-track:4b69506367eb961d98c1a01f60855c6c9299f7cec53aa698c32f2f206bc98dba` |
| 9 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-7.md) | 63 | `declaration-track:39ff8065c5c0580260249c03582917bea46598f1a24656723143c261378b41ba` |
| 10 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-11.md) | 68 | `declaration-track:84117e292144e62140226766a10ec3904850849e6ad115e0671d7152d44fbaea` |
| 11 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-4.md) | 74 | `declaration-track:1caa5db1406014078ebfd2158eba640e2a7bd1f9803227ae589f8bab2a775121` |
| 12 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-16.md) | 79 | `declaration-track:b9dc3e2fce6f2d59964252de0a7d4aca0c33703b82d825189967d73adea00a02` |
| 13 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-19.md) | 85 | `declaration-track:c84c932a41d288abfbf8d1308fbb24af46d7b98a77dbcd89cdfa8b1a70f3c329` |
| 14 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-17.md) | 92 | `declaration-track:ba77436fd1dae205d4ea5be408c3735a7148d31af76fe069bbf79ed8d5bb6f88` |
| 15 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-20.md) | 99 | `declaration-track:ca2472b164e9d28b3ee0f329f3e7187e4203ad05f579eb92ffba3442c00258c9` |
| 16 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example.md) | 106 | `declaration-track:01aa421aa69ccee01486a345c67d24282c95faf690e740e8d83879c7b54f99f2` |
| 17 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-6.md) | 110 | `declaration-track:1e70b19e2608e5a7494c10270ccc3428f6a81b09cb13eee61293a813871ff735` |
| 18 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-3.md) | 115 | `declaration-track:04a888c804fcc450b76ad368e7dbd073e76efa76463f46f5d6a769ea3d3651ab` |
| 19 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-5.md) | 121 | `declaration-track:1dc4d465c9cd6a09e9a1d6e0becb874a23e5448e70ccf1eace530085bd33e0de` |
| 20 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-26.md) | 128 | `declaration-track:fe59cca0b015a0dd30a070abc03fcdc8a9441891a3f880b150b95f33489edc0b` |
| 21 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-12.md) | 133 | `declaration-track:98cbd5da966241c6d9726bd2b6eb0e5e09313add20afe82b26556ff7f3c3c7da` |
| 22 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-13.md) | 137 | `declaration-track:99ce0c78e087847c8bcdd234c3231e15a5f8f5b0fd2170f0210543dfbf1f379c` |
| 23 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-23.md) | 146 | `declaration-track:e9b4e6c4fbfdd59851d295607d9439b53628e4945e4f6a73ca3c93f996eae816` |
| 24 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-2.md) | 153 | `declaration-track:024577e2d487cd71acda8f05b3b8922d84a4bf772f910018d37ccf850549a22f` |
| 25 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-14.md) | 159 | `declaration-track:a1ae7b8d987b38460fca3145e46418a040e41c32e1722caaa6f3a38c9617ce95` |
| 26 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-21.md) | 167 | `declaration-track:d166ded61e765a961900f4ea07b41483eb3d7ff4f535054d07940f18a698663b` |
| 27 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-9.md) | 179 | `declaration-track:567cb559731496ae7a69953ff1049e1ce38296d0a2c3a0b6fa6a3a29d6304412` |
| 28 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-10.md) | 183 | `declaration-track:7eb13563bc902aaa01865a71d6a59c57b1edcab57c19539132f3f8037d6c7797` |
| 29 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CorrespondenceNamespaced.lean/declarations/example-source-edition-15.md) | 191 | `declaration-track:b8cec7820322a1f4f0513b2585dad8f02187d2304dbeb455836c8bf1bbe7705e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f64def7d302f603c6e98a0c74dcb8ffea4546d3b95eb989da2171b01a0b16d07 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Correspondence/Variant0320aa3c3442ff7b69b8a570be33fd0072d2b982bf649c7cea73c40d8c4dddf9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Correspondence/Variant0320aa3c3442ff7b69b8a570be33fd0072d2b982bf649c7cea73c40d8c4dddf9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

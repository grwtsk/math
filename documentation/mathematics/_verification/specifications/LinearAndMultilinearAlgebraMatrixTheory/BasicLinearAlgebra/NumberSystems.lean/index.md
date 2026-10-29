# Verification target: Number Systems

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da864f3c31ed035df72bcae1dea96589a22c3790",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NumberSystems/Variant7a53840accda52c1fd8746eb4766774a67913410d3a72d7d38c7fae42f4e6001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da864f3c31ed035df72bcae1dea96589a22c3790`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NumberSystems/Variant7a53840accda52c1fd8746eb4766774a67913410d3a72d7d38c7fae42f4e6001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NumberSystems/Variant7a53840accda52c1fd8746eb4766774a67913410d3a72d7d38c7fae42f4e6001.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.Representation` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [descriptorMatrix1](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/descriptormatrix1.md) | 5 | `declaration-track:6f9f3b370a50123da8b4edde8c079a09e23b00f209cd35bf92ad442ab53974cb` |
| 2 | `structure` | [NatMatrixCode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/natmatrixcode.md) | 8 | `declaration-track:da59436382518281e054567ca6773b0920da03c88141b0517f900781e01394ed` |
| 3 | `def` | [encodeNat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/encodenat.md) | 12 | `declaration-track:6fda4a0aac5d1d01f5d71d4173263a90752d76b746c4e544b82ccdb1a28d2c2c` |
| 4 | `def` | [decodeNat?](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/decodenat.md) | 16 | `declaration-track:5afc50df1417fc4e89b80df75800c70d33f8cfa69d5284a294e79e2568eae0f4` |
| 5 | `theorem` | [nat_blm_roundTrip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/nat-blm-roundtrip.md) | 19 | `result-track:48fb7e030efa8b2cc545b6f24bbd9fb542ed92c2318ffb2822ed0dcf1b619038` |
| 6 | `structure` | [IntMatrixCode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/intmatrixcode.md) | 23 | `declaration-track:5c1e996136241a8bcca295d77af0c2258e32a3e66105d34025c2bc9fdba72d50` |
| 7 | `def` | [encodeInt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/encodeint.md) | 27 | `declaration-track:71da0054b378bb7e233e7b740510fd5d9eefe78c2de4ec7977c16699c183570a` |
| 8 | `def` | [decodeInt?](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/decodeint.md) | 31 | `declaration-track:bd23e428d0c874ee3c6e742655b4abdb33f611d85e74c43ca5e9bfba4c88225d` |
| 9 | `theorem` | [int_blm_roundTrip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/int-blm-roundtrip.md) | 34 | `result-track:229ea61bfc2572e4d8e45329fe18e60a63453a4809579e485ea8f41ecb03790c` |
| 10 | `structure` | [ZModMatrixCode](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/zmodmatrixcode.md) | 38 | `declaration-track:263b8d803afb0f347cf6a8aa9010a46f51d9d2f9ba35adab7610246b34e38138` |
| 11 | `def` | [encodeZMod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/encodezmod.md) | 43 | `declaration-track:fee24e55eca9c1ff5ec328968b5fe1ea481e97ca70aaa71e473796f53d428ee6` |
| 12 | `def` | [decodeZMod?](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/decodezmod.md) | 46 | `declaration-track:478fdcc40f01cafaa5ef44f772c535f59f12cf7d9e8761382edc6db72ad1e835` |
| 13 | `theorem` | [zmod_blm_roundTrip](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/zmod-blm-roundtrip.md) | 49 | `result-track:04ee6972b0d7a6478d61bacad8a5d8834920c56742bd1978a704993743070730` |
| 14 | `inductive` | [NumberSystemDescriptor](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/numbersystemdescriptor.md) | 53 | `declaration-track:f36f899c80a90ca3c338d5cadd6323728678f77aba19dcde7c4b8ac0806e31f5` |
| 15 | `structure` | [NumberSystemRegistryEntry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/numbersystemregistryentry.md) | 63 | `declaration-track:1830535cf35ae9d1984045106da2b18796bf16d05b221633375312892da5999c` |
| 16 | `theorem` | [registry_entry_keeps_boundary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/NumberSystems.lean/declarations/registry-entry-keeps-boundary.md) | 69 | `result-track:27c9e2a5197a516fc5c20e68e512c837df42fac54773f988db332f19de260dff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fdc407698d5d8ee4a696b7d8c4402f75890368f8311f1b48ae9e0b1140ed8a58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/NumberSystems/Variant7a53840accda52c1fd8746eb4766774a67913410d3a72d7d38c7fae42f4e6001.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/NumberSystems/Variant7a53840accda52c1fd8746eb4766774a67913410d3a72d7d38c7fae42f4e6001.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

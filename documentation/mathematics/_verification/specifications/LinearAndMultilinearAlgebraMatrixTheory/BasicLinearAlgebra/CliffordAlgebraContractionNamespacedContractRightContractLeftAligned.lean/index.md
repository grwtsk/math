# Verification target: Clifford Algebra Contraction Namespaced Contract Right Contract Left Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7124df1bb575a257c67b24294ca91a4d3242a8d",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7124df1bb575a257c67b24294ca91a4d3242a8d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.ExteriorAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Fold` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.CliffordAlgebra.Conjugation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [contractLeftAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleftaux.md) | 69 | `declaration-track:ba9851c696796b2f164fc6cfdc6968ca35631bf2da769defac508898dc28e18a` |
| 2 | `theorem` | [contractLeftAux_contractLeftAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleftaux-contractleftaux.md) | 76 | `result-track:ee8cc033f7b7b43e82d5abc691088c3b854c48ed8ca43988cadd6607d3c35034` |
| 3 | `def` | [contractLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft.md) | 90 | `declaration-track:14e70fd0f9850a02d28d5ac2ce475b4a19b8a002605a6719ff42683c178b7ea9` |
| 4 | `def` | [contractRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-source-edition-2.md) | 120 | `declaration-track:93883013d602c5348a7e8d1d38e6a493fa3719bfa7af16f44fadba498566aedc` |
| 5 | `theorem` | [contractRight_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-eq.md) | 124 | `result-track:9d450b1ac4cd6036eaa7c2c2699ff7b7ad492e445893e4e0cee2948d55a734aa` |
| 6 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/instance.md) | 136 | `declaration-track:e4671c4ff55cc48f7499b0b494cb1c94efce42f94286979f745afeecbea72fcf` |
| 7 | `theorem` | [contractLeft_ι_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft-mul.md) | 139 | `result-track:0c383ebd9612a97d5cdf355ee146d43183db8230261cfe25ceea68dcb709f27e` |
| 8 | `theorem` | [contractRight_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-mul.md) | 147 | `result-track:d9acbd76d7453a007411ca6d8fc0471bffa0f5c4e25b38228d5528de94274958` |
| 9 | `theorem` | [contractLeft_algebraMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft-algebramap-mul.md) | 153 | `result-track:9d15d4be32a77235793d96d223c979e7f5e8b832f26698b8e6f9b2026a3f8a18` |
| 10 | `theorem` | [contractLeft_mul_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft-mul-algebramap.md) | 158 | `result-track:0ede94157f515809389539ffa0f06ff0646592db068a719979c4d709a26d7e5a` |
| 11 | `theorem` | [contractRight_algebraMap_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-algebramap-mul.md) | 163 | `result-track:2060cd87e8788f297fb1e02a479db2f282004103a438c3b73be6b51a35bd97a5` |
| 12 | `theorem` | [contractRight_mul_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-mul-algebramap.md) | 168 | `result-track:8307d5040afcb5daa788463be4b5b42c25d8ddaa24c83f4d9eab78efb4ce794c` |
| 13 | `theorem` | [contractLeft_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft-source-edition-2.md) | 176 | `result-track:2582d709d31fe564101694eaa6861cf72bc272073f5d4fe3c25def2a4fc67fbf` |
| 14 | `theorem` | [contractRight_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright.md) | 185 | `result-track:19fecd4d5020d8e4d59959058baeb4d49b7cc50800ea3cad161d91a5cec96dce` |
| 15 | `theorem` | [contractLeft_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft-algebramap.md) | 190 | `result-track:b5bc3c110077245259f8855d45f18ef2ba22a69f6745dced81eb4f3a2eb36933` |
| 16 | `theorem` | [contractRight_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-algebramap.md) | 197 | `result-track:b966153a7c4956009662b29cc8705a6f745ac09066e0020c6c0c935008de6478` |
| 17 | `theorem` | [contractLeft_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft-one.md) | 202 | `result-track:8e5308508e428b367db4a70b7ba9b5610911adf5a6129999266726592810fd49` |
| 18 | `theorem` | [contractRight_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-one.md) | 207 | `result-track:3fda52a999f1dd8cdb58366dd602e534870d6f363e89be4d4e391c8fa64b7fcf` |
| 19 | `theorem` | [contractLeft_contractLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft-contractleft.md) | 214 | `result-track:1eb6630570b5896590b9198af542398d3634bb57798652667dc48ec66a7c59c6` |
| 20 | `theorem` | [contractRight_contractRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-contractright.md) | 223 | `result-track:42a8b6c489b0dd02f19e7b5425d22a6dea8d802f52fe86309ec809d60190a901` |
| 21 | `theorem` | [contractLeft_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractleft-comm.md) | 228 | `result-track:8ca6f6482eaef6f8c4e0cb99722ee9f1ff8e752732689bec656ca32aa1524b4b` |
| 22 | `theorem` | [contractRight_comm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/contractright-comm.md) | 237 | `result-track:7c8c8ac377854da653e243d1d0847c441d7157156d795ff8dc9b5dd7ae7af855` |
| 23 | `def` | [changeFormAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeformaux.md) | 253 | `declaration-track:83735bcf9294155518025c61da75dc121c8f632d6fe3bc352f48ecd8b6cc3fa6` |
| 24 | `theorem` | [changeFormAux_changeFormAux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeformaux-changeformaux.md) | 258 | `result-track:f299eef62c8001da60f0f258bc28750ed3851b5a6a74e26754b1b655b8318c41` |
| 25 | `def` | [changeForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform.md) | 276 | `declaration-track:1e01288e713b13dcba32660b0c01c4c212c4030cab9bfe9773cffb37ab99b3c6` |
| 26 | `theorem` | [changeForm.zero_proof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-zero-proof.md) | 286 | `result-track:b37beb040ab37818125b046a786642a13eca859f8ab0a21bdf73d6fa347725d3` |
| 27 | `theorem` | [changeForm.add_proof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-add-proof.md) | 291 | `result-track:b392882f3f4b6b251f3989bce939b47d929801682ff92ae7a511611175c8539f` |
| 28 | `theorem` | [changeForm.neg_proof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-neg-proof.md) | 296 | `result-track:35176e9875eb21dccd19cfe592363ddaaba80371246c51eae19981490ef7e3ec` |
| 29 | `theorem` | [changeForm.associated_neg_proof](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-associated-neg-proof.md) | 300 | `result-track:b316070495380e192395c6849f5b2b33620ce72a1844585de7ef1d8f679d081e` |
| 30 | `theorem` | [changeForm_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-algebramap.md) | 306 | `result-track:ee0b1a9089523be3d5ed16056c50d1144431bbc714f9d2f2abbb68a3ef263f0d` |
| 31 | `theorem` | [changeForm_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-one.md) | 311 | `result-track:9450b431adb8be83b6bb546c455085d22e6417cab4c22a71e0e63f6f89a8be04` |
| 32 | `theorem` | [changeForm_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-source-edition-2.md) | 316 | `result-track:291f23adc226bae27f25915fed7bbbaf7b6c18a798ef8066c4e9fe334a2cc2f8` |
| 33 | `theorem` | [changeForm_ι_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-mul.md) | 321 | `result-track:cf35ab95fbf4bd8f92eb354d78affc28914ff6380daa57113294bac6eee308d1` |
| 34 | `theorem` | [changeForm_ι_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-mul-source-edition-2.md) | 329 | `result-track:ecb10b09faff84de94f7f267fe8ce869fcf43a82af3db50affa92369a4bcf088` |
| 35 | `theorem` | [changeForm_contractLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-contractleft.md) | 335 | `result-track:f365cab3e7701ee890288baeb8451f37415de413a5b805f3e9264f8d418c271e` |
| 36 | `theorem` | [changeForm_self_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-self-apply.md) | 346 | `result-track:c6acebbfb7e8a899e657f3a0c87049d67e58a4b4a92ffbd44dc31e5911e4ebbb` |
| 37 | `theorem` | [changeForm_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-self.md) | 356 | `result-track:7e50072425cd288a13ca9f9d6456ffce33926156542dbfad4143fd1e82c77ffd` |
| 38 | `theorem` | [changeForm_changeForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-changeform.md) | 362 | `result-track:59ff641457b94879eae82bb666fec8e0c802aa06f4ea7510437a8ffce3b3d7df` |
| 39 | `theorem` | [changeForm_comp_changeForm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeform-comp-changeform.md) | 372 | `result-track:b6ff834b455262257b8514e3c636fa41b732d7975ead11ee25fbf2f668039a7c` |
| 40 | `def` | [changeFormEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeformequiv.md) | 381 | `declaration-track:9ee1bb6b89a06d58209a7ad647e6e37bd67ecc93b22c1f36f0dbb28cc9debb33` |
| 41 | `theorem` | [changeFormEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/changeformequiv-symm.md) | 395 | `result-track:90ec5860362358a9c79c3b33e3f5109297581ae00300e0a42a8b565aa2f1a5f1` |
| 42 | `def` | [equivExterior](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CliffordAlgebraContractionNamespacedContractRightContractLeftAligned.lean/declarations/equivexterior.md) | 407 | `declaration-track:a58038dda08a23a09ba1b8acedf0394f772fc21636a3270e746ec89feb7eac57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cba0e12ce6fec852ecfe5ac4145957852d1692caed324cb0be059518982dc73e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Contraction/Variant9f838193cbbc79482959a0c4f671e8066f78eb2644120a723857a53f283fde1c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

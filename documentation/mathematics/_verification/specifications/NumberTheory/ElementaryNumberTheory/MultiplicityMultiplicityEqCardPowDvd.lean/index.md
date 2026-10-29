# Verification target: Multiplicity Multiplicity Eq Card Pow Dvd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a9929cc2d5e8964bad57f537386b97a150c3d695",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a9929cc2d5e8964bad57f537386b97a150c3d695`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Bitwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Parity` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [multiplicity_eq_card_pow_dvd](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-eq-card-pow-dvd.md) | 59 | `result-track:ecc2d72c7800f3f127397669ee2a52835264e4bfbc07e182797df527a87aa872` |
| 2 | `theorem` | [multiplicity_one](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-one.md) | 80 | `result-track:dd7d8940083c49ba58fc9b2db64a61c0adaa681607b67853e43ce37c73532fc6` |
| 3 | `theorem` | [multiplicity_mul](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-mul.md) | 84 | `result-track:31eb3cbc915671a3eacc11ff4712114fc44448b82aff9d9d4a35f499d9f09f55` |
| 4 | `theorem` | [multiplicity_pow](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-pow.md) | 89 | `result-track:385afa53bdeeb3b21a31cc3e18cb2674a66770349fd54bace5f5fb5a781d064c` |
| 5 | `theorem` | [multiplicity_self](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-self.md) | 94 | `result-track:81f50b73194e36220ee90766cf744a8f7f70e3523de74bf959808ee73963a7a3` |
| 6 | `theorem` | [multiplicity_pow_self](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-pow-self.md) | 98 | `result-track:24ee927ddde31437cff159d7de1a0bddedf0beef8b6bb55883411daf44b95efb` |
| 7 | `theorem` | [multiplicity_factorial](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-factorial.md) | 106 | `result-track:691b78692caf3e815f3a9e01a2036f8999e3ec38e6cb28a0555a9ad701a1a92d` |
| 8 | `theorem` | [multiplicity_factorial_mul_succ](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-factorial-mul-succ.md) | 126 | `result-track:d4cb57556c3c5c37733023ba4a46ebaea53100af089f98704480fc2591f8214f` |
| 9 | `theorem` | [multiplicity_factorial_mul](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-factorial-mul.md) | 152 | `result-track:ee227ac43b2f929c4f716af22d8a83a4fbf958ea50e9075014ff5367ac937e12` |
| 10 | `theorem` | [pow_dvd_factorial_iff](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/pow-dvd-factorial-iff.md) | 164 | `result-track:88575aa61adefd0176d1927d83fdbaf78e87423721829bbf28de242394e5de32` |
| 11 | `theorem` | [multiplicity_factorial_le_div_pred](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-factorial-le-div-pred.md) | 169 | `result-track:3bf78a3f87bc705af42da298def84dd7a6c3e12c871a70a5d6e7ffde05db4a29` |
| 12 | `theorem` | [multiplicity_choose_aux](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-choose-aux.md) | 175 | `result-track:4605a799e36f9eb79e76f370f4685a25f6d0c17af9db7bfa4112ccfecf7adcd0` |
| 13 | `theorem` | [multiplicity_choose](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-choose.md) | 191 | `result-track:14195fcf44fd8c24e71a740310b33bfdd43e23f917dd804fa2054e89a3723d6f` |
| 14 | `theorem` | [multiplicity_le_multiplicity_choose_add](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-le-multiplicity-choose-add.md) | 210 | `result-track:435265f512c31a58fd7aac204c6cf3f467708258f5718ec7d461306dc0197e9a` |
| 15 | `theorem` | [multiplicity_choose_prime_pow_add_multiplicity](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-choose-prime-pow-add-multiplicity.md) | 223 | `result-track:df2244933a76602c69cb73ac54694dc1a357741ae828bf4132ed40c29c1477e8` |
| 16 | `theorem` | [multiplicity_choose_prime_pow](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-choose-prime-pow.md) | 243 | `result-track:988ead53638b971b46b2ef80a916941c21675d6d42801a8fa4f0235615603259` |
| 17 | `theorem` | [dvd_choose_pow](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/dvd-choose-pow.md) | 250 | `result-track:309bc4cda89541bdc294dd952d103c5a6fb114805aae44cc21d6ffe0be05ab4a` |
| 18 | `theorem` | [dvd_choose_pow_iff](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/dvd-choose-pow-iff.md) | 259 | `result-track:f26e7045adf416f015063047ba6638a76bf5e3e2600f7881d974a28ff9d529d0` |
| 19 | `theorem` | [multiplicity_two_factorial_lt](../../../../../NumberTheory/ElementaryNumberTheory/MultiplicityMultiplicityEqCardPowDvd.lean/declarations/multiplicity-two-factorial-lt.md) | 266 | `result-track:6f8ec4575f5046d4e6966de3c242ba587c0fa8a8fe2357198f9ccd5ee15b1914` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34eb8ccd343bd5edfbe3da537246192ff20cf944569aca71941a2e5eacbe43db -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Multiplicity/Variantbb5fd948671f7b5499a08587746f81ac09e90c44aaee85e97039fd04baadefe2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

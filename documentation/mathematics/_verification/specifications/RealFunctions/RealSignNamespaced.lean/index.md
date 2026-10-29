# Verification target: Real Sign Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "949462ab6a884fd1a7c04a3361071b688516f901",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variantcdea7ce5b3807c71d40d8243a168bb1e570bd5f162fdbac9aa3b693a74de0a5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RealSignNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/RealSignNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `949462ab6a884fd1a7c04a3361071b688516f901`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variantcdea7ce5b3807c71d40d8243a168bb1e570bd5f162fdbac9aa3b693a74de0a5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variantcdea7ce5b3807c71d40d8243a168bb1e570bd5f162fdbac9aa3b693a74de0a5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Inv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sign](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign.md) | 39 | `declaration-track:7692cc17f9ec3e8b0b884e2269c04587b0093e71610e9abe970850049aa618d3` |
| 2 | `theorem` | [sign_of_neg](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-of-neg.md) | 42 | `result-track:4dff872a65ab73cc2ebd359fe7ec4d2bd84fd253374eb12cae9b719f040b4845` |
| 3 | `theorem` | [sign_of_pos](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-of-pos.md) | 44 | `result-track:d9c9c86ed65074bd838b2d890873eaa40d2fad0f861624cd23e36ff9c02704e2` |
| 4 | `theorem` | [sign_zero](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-zero.md) | 47 | `result-track:3f0ea4d865685a765026f3e57420886a98c0d5a517c1235e5cb7cf31a92a50a5` |
| 5 | `theorem` | [sign_one](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-one.md) | 50 | `result-track:1d522e3c6add6edf6eb38ed5eca3f8bf5d63514a5a1c722e91e349ae6e5c5dbb` |
| 6 | `theorem` | [sign_apply_eq](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-apply-eq.md) | 53 | `result-track:72281f46315dd9286d7f34cc3c49a7f41b215f97f601d1851d351018c48ad86b` |
| 7 | `theorem` | [sign_apply_eq_of_ne_zero](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-apply-eq-of-ne-zero.md) | 60 | `result-track:9da07e0bb31905b157321180036dfda66c079dbdb67bd3ef8b5e0891e78139e7` |
| 8 | `theorem` | [sign_eq_zero_iff](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-eq-zero-iff.md) | 64 | `result-track:baca5883a5cb8fc7ac482659e09eaba23512ebea679de31b8d7c87f1de2213f1` |
| 9 | `theorem` | [sign_intCast](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-intcast.md) | 73 | `result-track:4f986a8da4b38caecb22d1e5cbd01db06aeddfc36f7061ad93f46c86b789f734` |
| 10 | `theorem` | [sign_neg](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-neg.md) | 80 | `result-track:6d2b943187da7965c8e64ea4deb488e05734600a27298b4405cabc41eea67060` |
| 11 | `theorem` | [sign_mul_nonneg](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-mul-nonneg.md) | 86 | `result-track:91675a454525a60a7f7a8dfe6fb3e57436e6590a539f3d830f17c67c335fa424` |
| 12 | `theorem` | [sign_mul_pos_of_ne_zero](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-mul-pos-of-ne-zero.md) | 94 | `result-track:baedacb99e0b55408f6d3b335c5420639f90b1f7e839c5ac9950ae92af49d356` |
| 13 | `theorem` | [inv_sign](../../../../RealFunctions/RealSignNamespaced.lean/declarations/inv-sign.md) | 100 | `result-track:ae89fc14f787d9d8d0293cf354e81e2b9c1d83ed7d80858002fc81874f63db5a` |
| 14 | `theorem` | [sign_inv](../../../../RealFunctions/RealSignNamespaced.lean/declarations/sign-inv.md) | 110 | `result-track:9d2bb5efe0ac52cd061bafd262cd876fb74e5933b33dcd5d7ca11f8072cc986a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e5df23a583815600e12aec951d9ebbb3fc24952edc3e28e840d8e9b3781f191 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variantcdea7ce5b3807c71d40d8243a168bb1e570bd5f162fdbac9aa3b693a74de0a5b.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sign/Variantcdea7ce5b3807c71d40d8243a168bb1e570bd5f162fdbac9aa3b693a74de0a5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

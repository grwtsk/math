# Verification target: Mv Polynomial Ideal Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dac63ce6ee2b177434a64b7f47c7301977ddebc5",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dac63ce6ee2b177434a64b7f47c7301977ddebc5`.

Source path: `GRWTSK/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_ideal_span_monomial_image](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/mem-ideal-span-monomial-image.md) | 39 | `result-track:ac3c80cc60cdd4583eb5b4755b7b9797063fa3dc35117412df2db9c1da9d94f4` |
| 2 | `theorem` | [mem_ideal_span_monomial_image_iff_dvd](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/mem-ideal-span-monomial-image-iff-dvd.md) | 45 | `result-track:249430a87f8a60e36763d6341ebea3d75deec9168dae334369523c3cb3b0d7f5` |
| 3 | `theorem` | [mem_ideal_span_X_image](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/mem-ideal-span-x-image.md) | 53 | `result-track:9b1a48d064c8d7cf1f0fa23775d1e302f95dbfd5ce6770086774a6a815abf9dd` |
| 4 | `abbrev` | [idealOfVars](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/idealofvars.md) | 67 | `declaration-track:59bb7077ca54743a564f4ee4c743f8405038d21959099265047908804888e504` |
| 5 | `lemma` | [idealOfVars_fg](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/idealofvars-fg.md) | 70 | `result-track:61d566b62fff029c2af1d3607315cde819353e2058b48e8b70ee04a6d3363550` |
| 6 | `lemma` | [idealOfVars_eq_restrictSupportIdeal](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/idealofvars-eq-restrictsupportideal.md) | 74 | `result-track:1ea0025712dab64be8c7e29c49372a0014d2122bd30b5810189296aadbbb3b88` |
| 7 | `theorem` | [pow_idealOfVars](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/pow-idealofvars.md) | 87 | `result-track:41d6574cf23683e22f2d3efc23042ab43f5dee8fc8a506af85c6b9fa97f3417b` |
| 8 | `theorem` | [pow_idealOfVars_eq_span](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/pow-idealofvars-eq-span.md) | 97 | `result-track:a4ed94b55f5f1a7a6d234ce4418568e73cbfae5687fceb361e616183edc5d62f` |
| 9 | `theorem` | [mem_pow_idealOfVars_iff](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/mem-pow-idealofvars-iff.md) | 104 | `result-track:46be6e7afbe9d5f3355cd8888ff07698f07cc264d4957846d5001cd4cf9ea51f` |
| 10 | `theorem` | [mem_pow_idealOfVars_iff'](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/mem-pow-idealofvars-iff-source-edition-2.md) | 109 | `result-track:6a510cb203052cdeaba2dc63889f216d229e411d28dc0acf690f6cdd8cb06d82` |
| 11 | `theorem` | [monomial_mem_pow_idealOfVars_iff](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/monomial-mem-pow-idealofvars-iff.md) | 113 | `result-track:62a7adf30c3074be4387ca8b01e513d683484e50a7c38050547e960a426546c3` |
| 12 | `theorem` | [C_mem_pow_idealOfVars_iff](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/c-mem-pow-idealofvars-iff.md) | 118 | `result-track:a09f9da53454d7cd08066146489baee421e67efa6022f708e79cd1eb7e472fc6` |
| 13 | `theorem` | [mkₐ_eq_aeval](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/mk-eq-aeval.md) | 129 | `result-track:267cbc9c759d4f94111b5cbe72512bb332862c68dbeac06b40526a23fb54df45` |
| 14 | `theorem` | [mk_eq_eval₂](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/mk-eq-eval.md) | 135 | `result-track:5a57138e6959eb8d274e7d40694af43fb87ffc7184b242c13921483d7ff2ecb7` |
| 15 | `lemma` | [span_leadingTerm_sdiff_singleton_zero](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/span-leadingterm-sdiff-singleton-zero.md) | 150 | `result-track:ebeaae88a38cf9803e3910a1ea334661a9734aa78e8f262db379714aa633d097` |
| 16 | `lemma` | [span_leadingTerm_insert_zero](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/span-leadingterm-insert-zero.md) | 154 | `result-track:776084a85e2d204018fc429d90420acb9efea09fe6907f54eef8cd7834ff44bf` |
| 17 | `lemma` | [span_leadingTerm_eq_span_monomial](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/span-leadingterm-eq-span-monomial-source-edition-2.md) | 160 | `result-track:7eb9f0d280330a2d70698818b48f82756700afe7b7eb4cbf073bb86dff6498b3` |
| 18 | `lemma` | [span_leadingTerm_eq_span_monomial₀](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/span-leadingterm-eq-span-monomial.md) | 177 | `result-track:00b36a976ce57f671cb88815ebca361753a50c09e35ba4b9866ac76c8e5e742f` |
| 19 | `lemma` | [span_leadingTerm_eq_span_monomial'](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/span-leadingterm-eq-span-monomial-source-edition-3.md) | 185 | `result-track:bf873a18f7e078a7c3904594835b39c79f243bd1d639a42fb8d27ddeea5d0eed` |
| 20 | `lemma` | [sPolynomial_mem_sup_ideal](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/spolynomial-mem-sup-ideal.md) | 191 | `result-track:30252e30fb4ec6b6d7af7644a1e42ecf22bdd865ab1c264018e12e64639f70f8` |
| 21 | `lemma` | [sPolynomial_mem_ideal](../../../../CommutativeAlgebra/MvPolynomialIdealPublic.lean/declarations/spolynomial-mem-ideal.md) | 196 | `result-track:a00718e217a52ecebc81522237c509c1c58d94ca59efa7280ab5af106935e56e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=655fdb55caef550297dd0ba4cf67003dc234a06d7077a1bec62e421a625523da -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean","GRWTSK/_verification/specifications/Algebra/Ideal/Variant76cd75dedb1ee476efad3574f942b2959f5f782e5c78e26e6d74303db04cea93.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

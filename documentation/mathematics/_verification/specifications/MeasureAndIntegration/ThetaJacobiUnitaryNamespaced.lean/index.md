# Verification target: Theta Jacobi Unitary Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c51c4e8da48186d3a1390eae01b010fe48b06fd",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c51c4e8da48186d3a1390eae01b010fe48b06fd`.

Source path: `GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ThetaPolynomialGraphCore` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.l2Space` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_power_sum_ae](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/finite-power-sum-ae.md) | 35 | `result-track:bc58eca3842e995b0ad28ae588cb323b2ef6d78ef316e06aa385adc783f0fa21` |
| 2 | `theorem` | [real_polynomial_eq_zero_of_ae](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/real-polynomial-eq-zero-of-ae.md) | 56 | `result-track:56a54d21211080c93f584a4c79cdac846f398fcb6c3e72c82bac45780d170202` |
| 3 | `theorem` | [powers_linearIndependent](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/powers-linearindependent.md) | 71 | `result-track:ca04dabf9025e19b6b23004d3dd8432c6f828882c04f12032cb8f35cabb762a2` |
| 4 | `def` | [orthogonalPolynomial](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/orthogonalpolynomial.md) | 99 | `declaration-track:5f68a8c8ab9490076539b1d117c63735cbeb578b61d5b1c10c93d8c56c163a02` |
| 5 | `theorem` | [orthogonalPolynomial_orthonormal](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/orthogonalpolynomial-orthonormal.md) | 103 | `result-track:be037190e54046271219b0ff72e93953aaddf8f58b0a702c1e679e0031660896` |
| 6 | `theorem` | [orthogonalPolynomial_span](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/orthogonalpolynomial-span.md) | 108 | `result-track:29e08ca4be9d8b2dcf65d7b3d65ef33699bec389d9174049e40608d4c5c66967` |
| 7 | `def` | [polynomialHilbertBasis](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/polynomialhilbertbasis.md) | 115 | `declaration-track:c9b18740d238db1fbc5ccc60d79867f9d34eb6f033254876d1f21b5d019c49ff` |
| 8 | `theorem` | [polynomialHilbertBasis_apply](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/polynomialhilbertbasis-apply.md) | 122 | `result-track:86bd5ad5d9a7a812ed713ba0fee62066159595fab7cbd1abbdaea2d0cace874a` |
| 9 | `def` | [pointedUnitary](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/pointedunitary.md) | 127 | `declaration-track:709d56d647067e7fb0483487d5d1584e3a52f9f27cb1be2092d8244a3831b74d` |
| 10 | `theorem` | [pointedUnitary_single](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/pointedunitary-single.md) | 132 | `result-track:4aaa7e805270f575179ce7672aeaa95f4f92778ef764ad543123ca7c0443fc48` |
| 11 | `theorem` | [orthogonalPolynomial_zero](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/orthogonalpolynomial-zero.md) | 137 | `result-track:0990165bc60b3c5433bf4101b258909a39276ec8598687251c70cd27c21cfdda` |
| 12 | `theorem` | [pointedUnitary_zero](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/pointedunitary-zero.md) | 148 | `result-track:899e4d8aa5ec197f2d4129d06e9527aebab4e82a3b3c6399cd3c3ab0fe74ec10` |
| 13 | `theorem` | [pointedUnitary_rawPoint](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/pointedunitary-rawpoint.md) | 153 | `result-track:ee200e769e504b72020353322248ee114154ffe7cf8136bb5ed0419d57a9fbb1` |
| 14 | `def` | [jacobiDomain](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobidomain.md) | 159 | `declaration-track:048730b5a35bcffaf577e14bdc1c64edb0e4e0b268a515e1b586512a04ef5c73` |
| 15 | `theorem` | [mem_jacobiDomain_iff](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/mem-jacobidomain-iff.md) | 163 | `result-track:682a6bb3d017268b150990d13a6c5068aa160b5d8bd1b45192de1c7a5eee8182` |
| 16 | `def` | [domainUnitary](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/domainunitary.md) | 168 | `declaration-track:a3c598ad160d17243a3281c4f9d7f3ae6bfb0b16c8fabea0db8cd52ce77f5ae8` |
| 17 | `def` | [jacobiOperator](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobioperator.md) | 173 | `declaration-track:89dbffb4328106a500d424b678ad75239087066282701c7c99139af72efe5d10` |
| 18 | `theorem` | [pointedUnitary_jacobiOperator](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/pointedunitary-jacobioperator.md) | 180 | `result-track:f2ae43b9760be008a631f512a4e14b2b5398d253c94a1173f2c8dd708c8d0da4` |
| 19 | `theorem` | [jacobiDomain_dense](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobidomain-dense.md) | 186 | `result-track:c05dfb528b0ab8216028b75f21f224d29471cb917800ddba9c860767624cb899` |
| 20 | `theorem` | [jacobiOperator_symmetric](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobioperator-symmetric.md) | 194 | `result-track:4210c4a4b6d8e34629fe290b07d8f3bd228a6c37d65dd514acda661abb555da1` |
| 21 | `theorem` | [jacobiOperator_isSelfAdjoint](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobioperator-isselfadjoint.md) | 212 | `result-track:bbad0ba6a274e79aa41211669bc1617109985f151c4a296b529ce7f738e301fd` |
| 22 | `theorem` | [jacobiOperator_isClosed](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobioperator-isclosed.md) | 246 | `result-track:c8bc88c473e05a6d4cae0a3888ff4b4b7625ccd850e382b646aee7f3af0286a3` |
| 23 | `def` | [jacobiPowerVector](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobipowervector.md) | 250 | `declaration-track:6fd8ebb9a956a5ba30b4b394ba4689cf8dc0a29dcb173d636a5fddc005d5772f` |
| 24 | `theorem` | [jacobiPowerVector_zero](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobipowervector-zero.md) | 254 | `result-track:3f7357cef5d47d119b93297afa9c5a0515388e6a926654569d5c825ab46db195` |
| 25 | `theorem` | [jacobiPowerVector_mem_domain](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobipowervector-mem-domain.md) | 263 | `result-track:a9e120a25c5ef52d2fb818a0bc7e887cfafa825dd13e47351dbe126b04e1c33b` |
| 26 | `def` | [jacobiPowerDomainVector](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobipowerdomainvector.md) | 271 | `declaration-track:9415335957c42bfd394c26deb4f2230db85428c973ceb1e54a1e895c0fc5229e` |
| 27 | `theorem` | [jacobiOperator_powerVector](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/jacobioperator-powervector.md) | 275 | `result-track:9eeeb83eccaecdb55f4493810c47a215ee05416f2036c4d4d2a8b7671465bf81` |
| 28 | `theorem` | [rawPoint_power_inner](../../../../MeasureAndIntegration/ThetaJacobiUnitaryNamespaced.lean/declarations/rawpoint-power-inner.md) | 287 | `result-track:2f41e0e8fb632e914d65070062d6a4a5441df0828b1d6e9a2ed65c3094f468d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=345e47b351cca85f85aa00d477b12ddf0650451ef20f591ec7d3680a69b7465c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean","GRWTSK/_verification/specifications/Analysis/ThetaJacobiUnitary/Variant8b915bf1ce19d77821d1b125426f61aa2767603f472b9e0cabed7d1f737dbbb4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

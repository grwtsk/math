# Cyclic sharp-prefix reindexing

The arithmetic/cyclic prefix-weight bridge is now source-proved.

The source first proves that every cyclic residue is recovered by casting its
endpoint-aware arithmetic representative back into \(\mathbf Z/(4X)\mathbf Z\).

It then constructs an explicit equivalence

\[
\left\{
z\in\mathbf Z/(4X)\mathbf Z:
2X<\operatorname{rep}(z)\le m
\right\}
\;\simeq\;
(2X,m]\cap\mathbf N.
\]

The forward map is \`octaveRepresentative\`; the inverse is reduction modulo
\(4X\).  The endpoint \(4X\leftrightarrow0\) is included automatically.

Using this equivalence, the cyclic Fejer convolution reindexes exactly as

\[
\boxed{
(K*1_{(2X,m]})(n)
=
\sum_{2X<q\le m}
K((n-q)\bmod4X).
}
\]

Together with the already proved cyclic/integer kernel-difference identity,
this discharges

\`ArithmeticPrefixWeightEqualsCyclicConvolutionClaim\`.

The arithmetic/cyclic model is therefore complete.  The remaining universal
suppliers are:

- \`CyclicConvolutionL1ByTranslationClaim\`;
- \`CyclicSharpTranslationCardinalityClaim\`.

Status:
\`SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
CYCLIC_PREFIX_SUBTYPE_EQUIV_SOURCE_WRITTEN /
CYCLIC_PREFIX_REINDEXING_SOURCE_PROVED /
ARITHMETIC_CYCLIC_PREFIX_BRIDGE_SOURCE_PROVED /
CONVEX_COMBINATION_L1_OPEN /
CYCLIC_INTERVAL_TRANSLATION_COUNT_OPEN\`.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ce68292be44c0bd9c81c9d4f07266e2053acf65419c905d7dedd63562f3a4c1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

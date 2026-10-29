# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Canonical.Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f6d9e0ef454786a10e9fe1888ff2ba525087b71` · SHA-256 `f0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.TensorNetwork.Gauge

/-!
# Canonical MPS representatives

Left-canonical form uses the sum over the physical and incoming virtual
indices.  Canonicalization is a gauge-certified representative choice, not a
new semantic state.
-/

namespace Mathematics.TensorNetwork

open scoped BigOperators

/-- Exact left-canonical equation at one site. -/
def LeftCanonicalAt
    (network : OpenMPS N D)
    (site : Fin N) : Prop :=
  ∀ right right',
    (∑ physical : Fin D,
      ∑ left :
          Fin (network.bondProfile.dimension site.castSucc),
        star (network.core site left physical right) *
          network.core site left physical right') =
      if right = right' then 1 else 0

/-- Every local core satisfies the exact left-canonical equation. -/
def LeftCanonical
    (network : OpenMPS N D) : Prop :=
  ∀ site, LeftCanonicalAt network site

/-- Exact canonicalization certificate. -/
structure CanonicalizationCertificate
    (source : OpenMPS N D) where
  canonical : OpenMPS N D
  gauge : GaugeTransformation source canonical
  leftCanonical : LeftCanonical canonical
  normPreserved :
    tensorL1Distance canonical.contract 0 =
      tensorL1Distance source.contract 0

/-- Numerical residuals remain a distinct checked approximation channel. -/
structure ApproxCanonicalizationCertificate
    (network : OpenMPS N D) where
  residual : Fin N → ℝ
  residual_nonnegative : ∀ site, 0 ≤ residual site
  tolerance : ℝ
  tolerance_nonnegative : 0 ≤ tolerance
  bounded : ∀ site, residual site ≤ tolerance
  authority : String
  authority_is_checkedNumerical :
    authority = "checked-numerical"

/-- Exact canonicalization preserves the represented tensor state. -/
theorem CanonicalizationCertificate.contract_eq
    {source : OpenMPS N D}
    (certificate : CanonicalizationCertificate source) :
    certificate.canonical.contract = source.contract :=
  certificate.gauge.contractPreserved

end Mathematics.TensorNetwork
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70e8f477fe2acd959b8c8f2d2c45a04f0e8121b07f8c61c080f731685f692559 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Canonical/Variantf0ade07345e45284313d5fd8bd0edefa270ba22eac85792a35e9b208b8891a20.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

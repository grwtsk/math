# Lag-sensitive four-distinct support

Issue: #913  
Parent: draft PR #912 at `0734e455f24706489205e4e0053fdc68834b270f`.

At fixed lag `ell`, the endpoint condition is
```text
c + ell < b+1.
```
Hence the valid centers are exactly
```text
range (b+1-ell)
```
and their number is `b+1-ell`.

Combining this exact center count with the previous safe bound of `(b+1)^2` admissible distinct shift pairs per center gives
```text
rawSupport(b,ell) <= (b+1-ell)*(b+1)^2.
```

For winding lag `ell=z*d^2`:
```text
rawSupport(b,d,z)
 <= (b+1-z*d^2)*(b+1)^2.
```

The source also defines the deterministic sum of these ceilings over the exact positive winding range.

No cancellation estimate is asserted. The improvement is purely combinatorial: large winding lags have fewer available centers before any Möbius cancellation is used.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f700e5f84f179655b41f16691cf7db678818523938c7629b7db6021336723cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_APPLICABLE. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":[],"status":"NOT_APPLICABLE","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->

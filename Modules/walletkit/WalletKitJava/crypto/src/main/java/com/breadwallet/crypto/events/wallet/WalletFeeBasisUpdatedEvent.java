/*
 * Created by Michael Carrara <michael.carrara@breadwallet.com> on 7/1/19.
 * Copyright (c) 2019 Breadwinner AG.  All right reserved.
*
 * See the LICENSE file at the project root for license information.
 * See the CONTRIBUTORS file at the project root for a list of contributors.
 */
package com.breadwallet.crypto.events.wallet;

import com.breadwallet.crypto.TransferFeeBasis;

public final class WalletFeeBasisUpdatedEvent implements WalletEvent {

    private TransferFeeBasis feeBasis;

    public WalletFeeBasisUpdatedEvent(TransferFeeBasis feeBasis) {
        this.feeBasis = feeBasis;
    }

    public TransferFeeBasis getFeeBasis() {
        return feeBasis;
    }

    @Override
    public <T> T accept(WalletEventVisitor<T> visitor) {
        return visitor.visit(this);
    }
}

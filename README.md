# data-platform-product-stock-sql  
data-platform-product-stock-sql は、データ連携基盤において、品目在庫データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-product-stock-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview      

## sqlの設定ファイル

data-platform-product-stock-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。  

* data-platform-product-stock-sql-product-stock-data.sql（データ連携基盤 品目在庫 - 品目在庫データ）
* data-platform-product-stock-sql-product-stock-by-batch-data.sql（データ連携基盤 品目在庫 - ロット品目在庫データ）
* data-platform-product-stock-sql-product-stock-availability-data.sql（データ連携基盤 品目在庫 - 品目在庫利用可能性データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。
